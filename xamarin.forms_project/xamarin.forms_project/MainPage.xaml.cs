using Xamarin.Forms;
using xamarin.forms_project.Pages;

namespace xamarin.forms_project
{
    public partial class MainPage : MasterDetailPage
    {
        public MainPage()
        {
            InitializeComponent();

            this.Detail = new NavigationPage(new MenuPage());
        }
    }
}