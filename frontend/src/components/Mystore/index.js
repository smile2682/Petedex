import React, { useState, useEffect } from "react";
import List from "./List";
import Alert from "./Alert";
import "./style.scss";
import axios from "axios";
import { useParams } from "react-router-dom/cjs/react-router-dom.min";

const getLocalStorage = () => {
  let list = localStorage.getItem("list");
  if (list) {
    return (list = JSON.parse(localStorage.getItem("list")));
  } else {
    return [];
  }
};
const Mystore = (props) => {
  let { user_id } = useParams();

  const [name, setName] = useState("");
  const [price, setPrice] = useState("");
  const [description, setDescription] = useState("");
  const [image, setImage] = useState("");

  const [list, setList] = useState(getLocalStorage());
  const [isEditing, setIsEditing] = useState(false);
  const [editID, setEditID] = useState(null);
  const [alert, setAlert] = useState({ show: false, msg: "", type: "" });
  const handleSubmit = (e) => {
    e.preventDefault();
    if (!name) {
      showAlert(true, "danger", "please enter value");
    } else if (name && isEditing) {
      setList(
        list.map((item) => {
          if (item.id === editID) {
            return { ...item, title: name };
          }
          return item;
        })
      );
      setName("");
      setEditID(null);
      setIsEditing(false);
      showAlert(true, "success", "value changed");
    } else {
      // router.put("/user_id/:product_id/add", (req, res) => {
      //add products needs newproduct: {user_id, name, description, price, image_path}

      const newProduct = { user_id, name, description, price, image };
      console.log(newProduct, "newProduct");
      //need to change product id
      axios
        .put(`http://localhost:8080/api/products/${user_id}/add`, {
          newProduct: { ...newProduct },
        })
        .then((res) => {
          showAlert(true, "success", "item added to the list");
          const newItem = {
            id: new Date().getTime().toString(),
            title: name,
            des: description,
            image: image,
            price: price,
          };

          setList([...list, newItem]);
          setName("");
          console.log("put success", res);
        })
        .catch((err) => console.log(err));
    }
  };

  const showAlert = (show = false, type = "", msg = "") => {
    setAlert({ show, type, msg });
  };
  const clearList = () => {
    showAlert(true, "danger", "empty list");
    setList([]);
  };
  const removeItem = (id) => {
    showAlert(true, "danger", "item removed");
    setList(list.filter((item) => item.id !== id));
  };
  const editItem = (id) => {
    const specificItem = list.find((item) => item.id === id);
    setIsEditing(true);
    setEditID(id);
    setName(specificItem.title);
  };
  useEffect(() => {
    localStorage.setItem("list", JSON.stringify(list));
  }, [list]);

  return (
    <section className="section-center">
      <form className="grocery-form" onSubmit={handleSubmit}>
        {alert.show && <Alert {...alert} removeAlert={showAlert} list={list} />}

        <h2>My Store</h2>
        <h3>Add Product</h3>
        <div className="form-control">
          <input
            type="text"
            className="grocery"
            placeholder="Product name"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
        </div>
        <div className="form-control">
          <input
            type="text"
            className="grocery"
            placeholder="Product description"
            value={description}
            onChange={(e) => setDescription(e.target.value)}
          />
        </div>
        <div className="form-control">
          <input
            type="text"
            className="grocery"
            placeholder="Product price"
            value={price}
            onChange={(e) => setPrice(e.target.value)}
          />
        </div>
        <div className="form-control">
          <input
            type="text"
            className="grocery"
            placeholder="Product image"
            value={image}
            onChange={(e) => setImage(e.target.value)}
          />
        </div>
        <button type="submit" className="submit-btn">
          {isEditing ? "edit" : "submit"}
        </button>
      </form>
      {list.length > 0 && (
        <div className="grocery-container">
          <List items={list} removeItem={removeItem} editItem={editItem} />
          <button className="clear-btn" onClick={clearList}>
            clear items
          </button>
        </div>
      )}
    </section>
  );
};

export default Mystore;
