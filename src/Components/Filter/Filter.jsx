import "./Filter.scss";
import img from "../../../src/Asset/search (1).png"
export default function Filter() {
  return (
    <div className="filter">
      <h1>
        Search result for<b>London</b>
      </h1>
      <div className="top">
        <div className="item">
          <label htmlFor="city">Location</label>
          <input type="text" id="city" name="city" placeholder="City Name" />
        </div>
      </div>
      <div className="bottom">
        <div className="item">
          <label htmlFor="type">Type</label>
          <select name="type" id="type">
            <option value="">Any</option>
            <option value="buy">Buy</option>
            <option value="rent">Rent</option>
          </select>
        </div>
        <div className="item">
          <label htmlFor="property">Property</label>
          <select>
            <option value="">Any</option>
            <option value="apartment">Apartment</option>
            <option value="house">House</option>
            <option value="condo">Condo</option>
            <option value="land">Land</option>
          </select>
        </div>
        <div className="item">
          <label htmlFor="minPrice">MinPrice</label>
          <input type="text" id="minPrice" name="minPrice" placeholder="Any" />
        </div>
        <div className="item">
          <label htmlFor="maxprice">MaxPrice</label>
          <input type="text" id="maxprice" name="maxprice" placeholder="Any" />
        </div>
        <div className="item">
          <label htmlFor="bedroom">BedRoom</label>
          <input type="text" id="bedroom" name="bedroom" placeholder="Any" />
        </div>
        <button>
            <img src={img} alt=""/>
        </button>
      </div>
    </div>
  );
}
