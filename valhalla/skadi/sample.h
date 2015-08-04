#ifndef __VALHALLA_SAMPLE_H__
#define __VALHALLA_SAMPLE_H__

#include <memory>
#include <string>
#include <utility>
#include <vector>
#include <unordered_map>

namespace valhalla {
  namespace skadi {

    class sample{
     public:
      //non-copyable
      sample(const sample&) = delete;
      sample& operator=(const sample&) = delete;

      /**
       * Constructor
       * @param data_source  file name of the datasource from which to sample
       */
      sample(const std::string& data_source, const size_t cache_size = 20);

      /**
       * Get a single sample from the datasource
       * @param coord  the single posting at which to sample the datasource
       */
      template <class coord_t>
      double get(const coord_t& coord);

      /**
       * Get multiple samples from the datasource
       * @param coords  the list of postings at which to sample the datasource
       */
      template <class coords_t>
      std::vector<double> get_all(const coords_t& coords);

      /**
       * @return the no data value for this data source
       */
      double get_no_data_value() const;

     protected:
      //hold a square degree of data
      struct srtm_tile_t {
        int lon;
        int lat;
        std::shared_ptr<int16_t> data;
      };

      std::string data_source;
      size_t cache_size;
      std::unordered_map<uint32_t, srtm_tile_t> cache;
    };

  }
}


#endif //__VALHALLA_SAMPLE_H__
