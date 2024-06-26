module ApplicationHelper
    def haversine_distance(lat1, lon1, lat2, lon2)
      rad_per_deg = Math::PI / 180
      earth_radius = 6371 # in kilometers
  
      dlat_rad = (lat2 - lat1) * rad_per_deg
      dlon_rad = (lon2 - lon1) * rad_per_deg
  
      lat1_rad = lat1 * rad_per_deg
      lat2_rad = lat2 * rad_per_deg
  
      a = Math.sin(dlat_rad / 2)**2 + Math.sin(dlon_rad / 2)**2 * Math.cos(lat1_rad) * Math.cos(lat2_rad)
      c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
  
      earth_radius * c
    end
  end