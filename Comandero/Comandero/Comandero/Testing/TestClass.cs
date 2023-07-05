using Comandero.Models.Catalogs;
using System;
using System.Collections.Generic;
using System.Text;

namespace Comandero.Testing
{
    /*
     Rol
        adm = Administrador
        usr = usuario
     */
    class TestClass
    {
        public List<UsersModel> usrsTest;

        public List<TableModel> tablesTest;

        public List<CustomerModel> customersTest;

        public List<ProductModel> productsTest;

        public ProductsModel productsModelsTest;

        public Models.Catalogs.Types typesTest;
        public TestClass()
        {
            usrsTest = new List<UsersModel>();
            tablesTest = new List<TableModel>();
            customersTest = new List<CustomerModel>();
            productsTest = new List<ProductModel>();
            productsModelsTest = new ProductsModel();
            typesTest = new Models.Catalogs.Types();
            initVars();
        }
        private void initVars()
        {
            usrsTest.Add(new UsersModel()
            {
                Id = 1234,
                Name = "Juan Pablo",
                Password = "1",
                Rol = "adm",
                UrlImage = "DefaultUserImage.png"
            });
            usrsTest.Add(new UsersModel()
            {
                Id = 1285,
                Name = "Juan Perez",
                Password = "2",
                Rol = "usr",
                UrlImage = "DefaultUserImage.png"
            });
            usrsTest.Add(new UsersModel()
            {
                Id = 1235,
                Name = "Rosa Melchacho",
                Password = "3",
                Rol = "usr",
                UrlImage = "DefaultUserImage.png"
            });
            usrsTest.Add(new UsersModel()
            {
                Id = 1236,
                Name = "Benito Camelo",
                Password = "4",
                Rol = "usr",
                UrlImage = "DefaultUserImage.png"
            });
            usrsTest.Add(new UsersModel()
            {
                Id = 1237,
                Name = "Juan Pelardo",
                Password = "5",
                Rol = "usr",
                UrlImage = "DefaultUserImage.png"
            });
            usrsTest.Add(new UsersModel()
            {
                Id = 1238,
                Name = "Daniel Parra",
                Password = "6",
                Rol = "usr",
                UrlImage = "DefaultUserImage.png"
            });

            typesTest = new Models.Catalogs.Types()
            {
                Id = 1,
                Name = "Carne"
            };

            productsModelsTest = new ProductsModel()
            {
                Id = 12,
                Name = "Carne",
                SelectProduct = typesTest,
                Price = 150
            };

            productsTest.Add(new ProductModel()
            {
                Type = productsModelsTest,
                Quantity = 2
            });

            customersTest.Add(new CustomerModel()
            {
                Id = 12,
                Current = 109.12,
                Products = productsTest,
            });

            tablesTest.Add(new TableModel()
            {
                Id = 1,
                Current = 850.50,
                Name = "Mesa 1",
                //Customer = customersTest,
                Icon = "Food"

            });

            tablesTest.Add(new TableModel()
            {
                
                Id = 2,
                Current = 450.50,
                Name = "Mesa 2",
                //Customer = customersTest,
                Icon = "Food"
            });
        }
    }
}
