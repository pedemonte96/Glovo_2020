using glovo_webapi.Utils;

namespace glovo_webapi.Models.Product
{
        
    //Send
    public class ProductModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string ImgPath { get; set; }
        public string Description { get; set; }
        public float Price { get; set; }
        public int RestaurantId { get; set; }
        public ProductCategory Category { get; set; }
        public string CategoryString
        {
            get { return Category.ToString(); }
        }

        public ProductModel() {}
        
        public ProductModel(int id, string name, string imgPath, string description, float price, int restaurantId)
        {
            Id = id;
            Name = name;
            ImgPath = imgPath;
            Description = description;
            Price = price;
            RestaurantId = restaurantId;
        }
    }
    
}