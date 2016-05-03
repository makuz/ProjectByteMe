using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proba4.Models
{
    [Serializable]
    public class Product
    {
        public long Id { get; set; }
        public string Category { get; set; }
        public string Name { get; set; }
        public int Amount { get; set; }
        public decimal Calories { get; set; }
        public decimal Sugar { get; set; }
        public decimal Carbs { get; set; }

        public decimal TotalCalories { get; set; }
        public decimal TotalSugar { get; set; }
        public decimal TotalCarbs { get; set; }

        public void CalculateTotal()
        {
            TotalCalories = Amount * Calories;
            TotalSugar = Amount * Sugar;
            TotalCarbs = Amount * Carbs;
        }


    }
}