module PagesHelper
  def generate_featured_product(rand)
    if @rand == 1 
      link_to(
        image_tag('RecordStallFeatured.jpg', class: "center-block img-responsive", style: "width: 75%;"),
        "http://www.amazon.com/gp/product/B014QAEQRM/") 
    elsif @rand == 2 
      link_to(
        image_tag('RoundStallFeatured.jpg', class: "center-block img-responsive", style: "width: 75%;"),
        "http://www.amazon.com/Its-Ridic-Filled-32-panel-Footbag/dp/B014QAM74Q") 
    elsif @rand == 3 
      link_to(
        image_tag('SpiralFeatured.jpg', class: "center-block img-responsive", style: "width: 75%;"),
        "http://www.amazon.com/gp/product/B013RU0OI2/") 
    elsif @rand == 4 
      link_to(
        image_tag('RecordBreakerFeatured.jpg', class: "center-block img-responsive", style: "width: 75%;"),
        "http://www.amazon.com/Its-Ridic-Record-breaker-2-panel-Footbag/dp/B013TN92MQ/") 
    elsif @rand == 5 
      link_to(
        image_tag('RoundPopFeatured.jpg', class: "center-block img-responsive", style: "width: 75%;"),
        "http://www.amazon.com/gp/product/B014QA5T2I/") 
    end 
  end
end
