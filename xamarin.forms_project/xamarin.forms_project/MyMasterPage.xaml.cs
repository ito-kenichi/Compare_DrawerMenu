using System.Collections.Generic;
using Xamarin.Forms;

namespace xamarin.forms_project
{
    public partial class MyMasterPage : ContentPage
    {
        public MyMasterPage()
        {
            InitializeComponent();

            var myMasterPageItems = new List<MyMasterPageItem>();
            myMasterPageItems.Add(new MyMasterPageItem
            {
                Title = "１枚目",
                IconSource = "icon.png",
                TargetType = typeof(FirstPage)
            });
            myMasterPageItems.Add(new MyMasterPageItem
            {
                Title = "２枚目",
                IconSource = "icon.png",
                TargetType = typeof(SecondPage)
            });
            listView.ItemsSource = myMasterPageItems;
        }
        public ListView ListView { get { return listView; } }
    }
}