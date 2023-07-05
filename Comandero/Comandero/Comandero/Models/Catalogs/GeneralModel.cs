using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;

namespace Comandero.Models.Catalogs
{

    public partial class CustomerModel
    {

        public long Id { get; set; }
        public double Current { get; set; }
        public List<ProductModel> Products { get; set; }

        public Color BgColor { get; set; }

    }

    public partial class ProductModel
    {
        public ProductsModel Type { get; set; }
        public int Quantity { get; set; }
    }

    public class ProductsModel
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public Types SelectProduct { get; set; }
        public double Price { get; set; }
        public Color BgColor { get; set; }
    }
    public class Types
    {
        /*
         1 = carne, 2=otro
         */
        public long Id { get; set; }
        public string Name { get; set; }

    }

    public partial class ItemMenuModel
    {
        public string Title { get; set; }
        public string Icon { get; set; }
        public string Page { get; set; }
        public bool PopupPage { get; set; }
    }

    public class UsersModel
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string Rol { get; set; }
        public string UrlImage { get; set; }
        public Color BgColor { get; set; }

        public void initEmpty()
        {
            Id = 0;
            Name = "";
            Password = "";
            Rol = "usr";
            UrlImage = "DefaultUserImage.png";
        }

    }

}
