using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;

namespace Comandero.Models.Catalogs
{
    public class TableModel
    {
        public long Id { get; set; }
        public double Current { get; set; }
        public string Icon { get; set; }
        public string Name { get; set; }
        public List<Customer> Customer { get; set; }
        public Color BgColor { get; set; }

    }
    public partial class Customer
    {

        public long Id { get; set; }
        public double Current { get; set; }
        public List<Product> Products { get; set; }

        public Color BgColor { get; set; }

    }

    public partial class Product
    {
        public ProductsModel Type { get; set; }
        public int Quantity { get; set; }
    }

    public class ProductsModel
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public Type SelectProduct { get; set; }
        public double Price { get; set; }
        public Color BgColor { get; set; }
    }
    public partial class Type
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
