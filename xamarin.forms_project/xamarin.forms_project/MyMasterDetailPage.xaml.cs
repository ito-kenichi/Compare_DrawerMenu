using System;
using Xamarin.Forms;

namespace xamarin.forms_project
{
    public partial class MyMasterDetailPage : MasterDetailPage
    {
        public MyMasterDetailPage()
        {
            InitializeComponent();
            masterPage.ListView.ItemSelected += OnItemSelected;
        }

        void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var item = e.SelectedItem as MyMasterPageItem;
            if (item != null)
            {
                Detail = new NavigationPage((Page)Activator.CreateInstance(item.TargetType));
                masterPage.ListView.SelectedItem = null;
                IsPresented = false;
            }
        }
    }
}
