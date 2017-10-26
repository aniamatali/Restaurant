using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc;
using ToDoList.Models;
using ToDoList;

namespace ToDoList.Controllers
{
    public class HomeController : Controller
    {
      [HttpGet("/")]
      public ActionResult Index()
      {
        return View();
      }

      [HttpGet("/Cuisines")]
      public ActionResult Results2()
      {
        return View("ViewCuisines",Cuisine.GetAll());
      }

      [HttpPost("/Cuisines")]
      public ActionResult ViewCuisines()
      {
        Cuisine newCuisine = new Cuisine (Request.Form["inputCuisine"]);
        newCuisine.Save();
        return View (Cuisine.GetAll());
      }

      [HttpGet("/Cuisines/{id}")]
      public ActionResult RestaurantInfo(int id)
      {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Cuisine selectedCuisine = Cuisine.Find(id);
        List<Restaurant> cuisineRestaurants = selectedCuisine.GetRestaurants();
        model.Add("cuisine", selectedCuisine);
        model.Add("restaurant", cuisineRestaurants);
        return View(model);

      }

      [HttpGet("/Cuisines/{id}/restaurants/new")]
      public ActionResult AddRestaurantForm(int id)
      {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Cuisine selectedCuisine = Cuisine.Find(id);
        List<Restaurant> allRestaurants = selectedCuisine.GetRestaurants();
        model.Add("cuisine", selectedCuisine);
        model.Add("restaurant", allRestaurants);
        return View(model);
      }


      [HttpPost("/Cuisines/{id}")]
      public ActionResult ResultTask2(int id)
      {
        string restaurantName = Request.Form["inputRestaurant"];
        Restaurant newRestaurant = new Restaurant(restaurantName,id,(Request.Form["inputHours"]));
        newRestaurant.Save();

        Dictionary<string, object> model = new Dictionary<string, object>();
        Cuisine selectedCuisine = Cuisine.Find(Int32.Parse(Request.Form["cuisine-id"]));
        List<Restaurant> cuisineRestaurants = selectedCuisine.GetRestaurants();
        model.Add("restaurant", cuisineRestaurants);
        model.Add("cuisine", selectedCuisine);


        return View("RestaurantInfo", model);
      }

      [HttpPost("/Tasks/Delete")]
      public ActionResult DeletePage2()
      {
        Restaurant.DeleteAll();
        return View("RemoveAllRestaurants");
      }

      [HttpPost("/Categories/{id}/Delete")]
      public ActionResult DeleteCuisine(int id)
      {
        Cuisine.DeleteCuisine(id);
        Restaurant.DeleteTasks(id);
        return View("RemoveThisCuisine");
      }

      [HttpPost("/Cuisines/Delete")]
      public ActionResult DeletePage()
      {
        Restaurant.DeleteAll();
        Cuisine.DeleteAll();
        return View("RemoveAllCuisines");
      }

      [HttpGet("/RestaurantList")]
      public ActionResult AlphaList()
      {
        return View(Restaurant.GetAlphaList());
      }

      [HttpGet("/Cuisines/{id}/update")]
    public ActionResult RestaurantUpdate(int id)
    {
      Restaurant thisRestaurant = Restaurant.Find(id);
      return View(thisRestaurant);
    }

    [HttpPost("/Cuisines/{id}/update")]
    public ActionResult RestaurantEditConfirm(int id)
    {
      Restaurant thisRestaurant = Restaurant.Find(id);
      thisRestaurant.UpdateRestaurantName(Request.Form["new-name"]);
      return RedirectToAction("AlphaList");
    }

    }
  }
