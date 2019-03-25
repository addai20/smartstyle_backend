class CategoriesController < ApplicationController
  before_action :find_category, only: [:update]

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
      @category = Category.create!(category_params)
      render json: @category
  end

  def update
    @category.update(category_params)
    if @category.save
      render json: @category, status: :accepted
    else
      render json: { errors: @category.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
      @category = Category.all.find(params[:id])
      @category.destroy
  end

  def weatherArray
    [
      Category: {
        BelowFreezing: {
          TempMin: 0,
          TempMax: 32,
          Weather: {
            Thunderstorm: {
              TLR: {
                id: 200,
                description: "thunderstorm with light rain",
                icon: "11d",
                categoryName: ["Rain", "Very Cold"]
              },
              TR: {
                id: 201,
                description: "thunderstorm with light rain",
                categoryName: ["Rain", "Very Cold"]
              },
              THR: {
                id: 202,
                description: "thunderstorm with heavy rain",
                categoryName: ["Rain", "Very Cold"]
              },
              LT: {
                id: 210,
                description: "light thunderstorm",
                categoryName: ["Rain", "Very Cold"]
              },
              T: {
                id: 211,
                description: "thunderstorm",
                categoryName: ["Rain", "Very Cold"]
              },
              HT: {
                id: 212,
                description: "heavy thunderstorm",
                categoryName: ["Rain", "Very Cold"]
              },
              RT: {
                id: 221,
                description: "ragged thunderstorm",
                categoryName: ["Rain", "Very Cold"]
              },
              TLD: {
                id: 230,
                description: "thunderstorm with light drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
              TD: {
                id: 231,
                description: "thunderstorm with drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
              THD: {
                id: 232,
                description: "thunderstorm with heavy drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
            },
            Drizzle: {
              LID: {
                id: 300,
                description: "light intensity drizzle",
                icon: "11d",
                categoryName: ["Rain", "Very Cold"]
              },
              D: {
                id: 301,
                description: "drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
              HID: {
                id: 302,
                description: "heavy intensity drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
              LIDR: {
                id: 310,
                description: "light intensity drizzle rain",
                categoryName: ["Rain", "Very Cold"]
              },
              DR: {
                id: 311,
                description: "Drizzle Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              HIDR: {
                id: 312,
                description: "heavy intensity drizzle rain",
                categoryName: ["Rain", "Very Cold"]
              },
              SRD: {
                id: 313,
                description: "shower rain and drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
              HSRD: {
                id: 314,
                description: "heavy shower rain and drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
              SD: {
                id: 321,
                description: "shower drizzle",
                categoryName: ["Rain", "Very Cold"]
              },
            },
            Rain: {
              LR: {
                id: 500,
                description: "Light Rain",
                icon: "11d",
                categoryName: ["Rain", "Very Cold"]
              },
              MR: {
                id: 501,
                description: "Moderate Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              HIR: {
                id: 502,
                description: "heavy intensity rain",
                categoryName: ["Rain", "Very Cold"]
              },
              VHR: {
                id: 503,
                description: "Very heavy rain",
                categoryName: ["Rain", "Very Cold"]
              },
              ER: {
                id: 504,
                description: "Extreme Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              FR: {
                id: 511,
                description: "Freezing Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              LISR: {
                id: 520,
                description: "Light Intensity Shower Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              SR: {
                id: 521,
                description: "Shower Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              HISR: {
                id: 522,
                description: "Heavy Intensity Shower Rain",
                categoryName: ["Rain", "Very Cold"]
              },
              RSR: {
                id: 531,
                description: "ragged Shower Rain",
                categoryName: ["Rain", "Very Cold"]
              },
            },
            Snow: {
              LS: {
                id: 600,
                description: "Light Snow",
                icon: "11d",
                categoryName: ["Snow", "Very Cold"]
              },
              S: {
                id: 601,
                description: "Snow",
                categoryName: ["Snow", "Very Cold"]
              },
              HS: {
                id: 602,
                description: "heavy Snow",
                categoryName: ["Snow", "Very Cold"]
              },
              Sl: {
                id: 611,
                description: "Sleet",
                categoryName: ["Snow", "Very Cold"]
              },
              LSSl: {
                id: 612,
                description: "Light Shower Sleet",
                categoryName: ["Snow", "Very Cold"]
              },
              SSl: {
                id: 613,
                description: "Shower Sleet",
                categoryName: ["Snow", "Very Cold"]
              },
              LRS: {
                id: 615,
                description: "Light Rain and Snow",
                categoryName: ["Snow", "Very Cold"]
              },
              RS: {
                id: 616,
                description: "Rain and Snow",
                categoryName: ["Snow", "Very Cold"]
              },
              LSS: {
                id: 620,
                description: "Light Shower Snow",
                categoryName: ["Snow", "Very Cold"]
              },
              SS: {
                id: 621,
                description: "ragged Shower Snow",
                categoryName: ["Snow", "Very Cold"]
              },
              HSS: {
                id: 622,
                description: "Heavy Shower Snow",
                categoryName: ["Snow", "Very Cold"]
              },
            },
            Clear: {
              C: {
                id: 800,
                description: "Clear Sky",
                icon: "11d",
                categoryName: ["Sunny","Very Cold"]
              },
            },
            Clouds: {
              FC: {
                id: 801,
                description: "Few Clouds",
                icon: "11d",
                categoryName: ["Very Cold"]
              },
              SC: {
                id: 802,
                description: "Scattered Clouds",
                icon: "11d",
                categoryName: ["Very Cold"]
              },
              BC: {
                id: 803,
                description: "Broken Clouds",
                icon: "11d",
                categoryName: ["Very Cold"]
              },
              OC: {
                id: 804,
                description: "Overcast Clouds",
                icon: "11d",
                categoryName: ["Very Cold"]
              }
            }
          }
        },
        FreezingToFortyFive: {
          TempMin: 33,
          TempMax: 45,
          Weather: {
            Thunderstorm: {
              TLR: {
                id: 200,
                description: "thunderstorm with light rain",
                icon: "11d",
                categoryName: ["Rain", "Cold"]
              },
              TR: {
                id: 201,
                description: "thunderstorm with light rain",
                categoryName: ["Rain", "Cold"]
              },
              THR: {
                id: 202,
                description: "thunderstorm with heavy rain",
                categoryName: ["Rain", "Cold"]
              },
              LT: {
                id: 210,
                description: "light thunderstorm",
                categoryName: ["Rain", "Cold"]
              },
              T: {
                id: 211,
                description: "thunderstorm",
                categoryName: ["Rain", "Cold"]
              },
              HT: {
                id: 212,
                description: "heavy thunderstorm",
                categoryName: ["Rain", "Cold"]
              },
              RT: {
                id: 221,
                description: "ragged thunderstorm",
                categoryName: ["Rain", "Cold"]
              },
              TLD: {
                id: 230,
                description: "thunderstorm with light drizzle",
                categoryName: ["Rain", "Cold"]
              },
              TD: {
                id: 231,
                description: "thunderstorm with drizzle",
                categoryName: ["Rain", "Cold"]
              },
              THD: {
                id: 232,
                description: "thunderstorm with heavy drizzle",
                categoryName: ["Rain", "Cold"]
              },
            },
            Drizzle: {
              LID: {
                id: 300,
                description: "light intensity drizzle",
                icon: "11d",
                categoryName: ["Rain", "Cold"]
              },
              D: {
                id: 301,
                description: "drizzle",
                categoryName: ["Rain", "Cold"]
              },
              HID: {
                id: 302,
                description: "heavy intensity drizzle",
                categoryName: ["Rain", "Cold"]
              },
              LIDR: {
                id: 310,
                description: "light intensity drizzle rain",
                categoryName: ["Rain", "Cold"]
              },
              DR: {
                id: 311,
                description: "Drizzle Rain",
                categoryName: ["Rain", "Cold"]
              },
              HIDR: {
                id: 312,
                description: "heavy intensity drizzle rain",
                categoryName: ["Rain", "Cold"]
              },
              SRD: {
                id: 313,
                description: "shower rain and drizzle",
                categoryName: ["Rain", "Cold"]
              },
              HSRD: {
                id: 314,
                description: "heavy shower rain and drizzle",
                categoryName: ["Rain", "Cold"]
              },
              SD: {
                id: 321,
                description: "shower drizzle",
                categoryName: ["Rain", "Cold"]
              },
            },
            Rain: {
              LR: {
                id: 500,
                description: "Light Rain",
                icon: "11d",
                categoryName: ["Rain", "Cold"]
              },
              MR: {
                id: 501,
                description: "Moderate Rain",
                categoryName: ["Rain", "Cold"]
              },
              HIR: {
                id: 502,
                description: "heavy intensity rain",
                categoryName: ["Rain", "Cold"]
              },
              VHR: {
                id: 503,
                description: "Very heavy rain",
                categoryName: ["Rain", "Cold"]
              },
              ER: {
                id: 504,
                description: "Extreme Rain",
                categoryName: ["Rain", "Cold"]
              },
              FR: {
                id: 511,
                description: "Freezing Rain",
                categoryName: ["Rain", "Cold"]
              },
              LISR: {
                id: 520,
                description: "Light Intensity Shower Rain",
                categoryName: ["Rain", "Cold"]
              },
              SR: {
                id: 521,
                description: "Shower Rain",
                categoryName: ["Rain", "Cold"]
              },
              HISR: {
                id: 522,
                description: "Heavy Intensity Shower Rain",
                categoryName: ["Rain", "Cold"]
              },
              RSR: {
                id: 531,
                description: "ragged Shower Rain",
                categoryName: ["Rain", "Cold"]
              },
            },
            Snow: {
              LS: {
                id: 600,
                description: "Light Snow",
                icon: "11d",
                categoryName: ["Snow", "Cold"]
              },
              S: {
                id: 601,
                description: "Snow",
                categoryName: ["Snow", "Cold"]
              },
              HS: {
                id: 602,
                description: "heavy Snow",
                categoryName: ["Snow", "Cold"]
              },
              Sl: {
                id: 611,
                description: "Sleet",
                categoryName: ["Snow", "Cold"]
              },
              LSSl: {
                id: 612,
                description: "Light Shower Sleet",
                categoryName: ["Snow", "Cold"]
              },
              SSl: {
                id: 613,
                description: "Shower Sleet",
                categoryName: ["Snow", "Cold"]
              },
              LRS: {
                id: 615,
                description: "Light Rain and Snow",
                categoryName: ["Snow", "Cold"]
              },
              RS: {
                id: 616,
                description: "Rain and Snow",
                categoryName: ["Snow", "Cold"]
              },
              LSS: {
                id: 620,
                description: "Light Shower Snow",
                categoryName: ["Snow", "Cold"]
              },
              SS: {
                id: 621,
                description: "ragged Shower Snow",
                categoryName: ["Snow", "Cold"]
              },
              HSS: {
                id: 622,
                description: "Heavy Shower Snow",
                categoryName: ["Snow", "Cold"]
              },
            },
            Clear: {
              C: {
                id: 800,
                description: "Clear Sky",
                icon: "11d",
                categoryName: ["Sunny","Cold"]
              },
            },
            Clouds: {
              FC: {
                id: 801,
                description: "Few Clouds",
                icon: "11d",
                categoryName: ["Cold"]
              },
              SC: {
                id: 802,
                description: "Scattered Clouds",
                icon: "11d",
                categoryName: ["Cold"]
              },
              BC: {
                id: 803,
                description: "Broken Clouds",
                icon: "11d",
                categoryName: ["Cold"]
              },
              OC: {
                id: 804,
                description: "Overcast Clouds",
                icon: "11d",
                categoryName: ["Cold"]
              }
            }
          }
        },
        FortyFivetoSixtyFive: {
          TempMin: 46,
          TempMax: 65,,
          Weather: {
            Thunderstorm: {
              TLR: {
                id: 200,
                description: "thunderstorm with light rain",
                icon: "11d",
                categoryName: ["Rain", "Moderate"]
              },
              TR: {
                id: 201,
                description: "thunderstorm with light rain",
                categoryName: ["Rain", "Moderate"]
              },
              THR: {
                id: 202,
                description: "thunderstorm with heavy rain",
                categoryName: ["Rain", "Moderate"]
              },
              LT: {
                id: 210,
                description: "light thunderstorm",
                categoryName: ["Rain", "Moderate"]
              },
              T: {
                id: 211,
                description: "thunderstorm",
                categoryName: ["Rain", "Moderate"]
              },
              HT: {
                id: 212,
                description: "heavy thunderstorm",
                categoryName: ["Rain", "Moderate"]
              },
              RT: {
                id: 221,
                description: "ragged thunderstorm",
                categoryName: ["Rain", "Moderate"]
              },
              TLD: {
                id: 230,
                description: "thunderstorm with light drizzle",
                categoryName: ["Rain", "Moderate"]
              },
              TD: {
                id: 231,
                description: "thunderstorm with drizzle",
                categoryName: ["Rain", "Moderate"]
              },
              THD: {
                id: 232,
                description: "thunderstorm with heavy drizzle",
                categoryName: ["Rain", "Moderate"]
              },
            },
            Drizzle: {
              LID: {
                id: 300,
                description: "light intensity drizzle",
                icon: "11d",
                categoryName: ["Rain", "Moderate"]
              },
              D: {
                id: 301,
                description: "drizzle",
                categoryName: ["Rain", "Moderate"]
              },
              HID: {
                id: 302,
                description: "heavy intensity drizzle",
                categoryName: ["Rain", "Moderate"]
              },
              LIDR: {
                id: 310,
                description: "light intensity drizzle rain",
                categoryName: ["Rain", "Moderate"]
              },
              DR: {
                id: 311,
                description: "Drizzle Rain",
                categoryName: ["Rain", "Moderate"]
              },
              HIDR: {
                id: 312,
                description: "heavy intensity drizzle rain",
                categoryName: ["Rain", "Moderate"]
              },
              SRD: {
                id: 313,
                description: "shower rain and drizzle",
                categoryName: ["Rain", "Moderate"]
              },
              HSRD: {
                id: 314,
                description: "heavy shower rain and drizzle",
                categoryName: ["Rain", "Moderate"]
              },
              SD: {
                id: 321,
                description: "shower drizzle",
                categoryName: ["Rain", "Moderate"]
              },
            },
            Rain: {
              LR: {
                id: 500,
                description: "Light Rain",
                icon: "11d",
                categoryName: ["Rain", "Moderate"]
              },
              MR: {
                id: 501,
                description: "Moderate Rain",
                categoryName: ["Rain", "Moderate"]
              },
              HIR: {
                id: 502,
                description: "heavy intensity rain",
                categoryName: ["Rain", "Moderate"]
              },
              VHR: {
                id: 503,
                description: "Very heavy rain",
                categoryName: ["Rain", "Moderate"]
              },
              ER: {
                id: 504,
                description: "Extreme Rain",
                categoryName: ["Rain", "Moderate"]
              },
              FR: {
                id: 511,
                description: "Freezing Rain",
                categoryName: ["Rain", "Moderate"]
              },
              LISR: {
                id: 520,
                description: "Light Intensity Shower Rain",
                categoryName: ["Rain", "Moderate"]
              },
              SR: {
                id: 521,
                description: "Shower Rain",
                categoryName: ["Rain", "Moderate"]
              },
              HISR: {
                id: 522,
                description: "Heavy Intensity Shower Rain",
                categoryName: ["Rain", "Moderate"]
              },
              RSR: {
                id: 531,
                description: "ragged Shower Rain",
                categoryName: ["Rain", "Moderate"]
              },
            },
            Snow: {
              LS: {
                id: 600,
                description: "Light Snow",
                icon: "11d",
                categoryName: ["Snow", "Moderate"]
              },
              S: {
                id: 601,
                description: "Snow",
                categoryName: ["Snow", "Moderate"]
              },
              HS: {
                id: 602,
                description: "heavy Snow",
                categoryName: ["Snow", "Moderate"]
              },
              Sl: {
                id: 611,
                description: "Sleet",
                categoryName: ["Snow", "Moderate"]
              },
              LSSl: {
                id: 612,
                description: "Light Shower Sleet",
                categoryName: ["Snow", "Moderate"]
              },
              SSl: {
                id: 613,
                description: "Shower Sleet",
                categoryName: ["Snow", "Moderate"]
              },
              LRS: {
                id: 615,
                description: "Light Rain and Snow",
                categoryName: ["Snow", "Moderate"]
              },
              RS: {
                id: 616,
                description: "Rain and Snow",
                categoryName: ["Snow", "Moderate"]
              },
              LSS: {
                id: 620,
                description: "Light Shower Snow",
                categoryName: ["Snow", "Moderate"]
              },
              SS: {
                id: 621,
                description: "ragged Shower Snow",
                categoryName: ["Snow", "Moderate"]
              },
              HSS: {
                id: 622,
                description: "Heavy Shower Snow",
                categoryName: ["Snow", "Moderate"]
              },
            },
            Clear: {
              C: {
                id: 800,
                description: "Clear Sky",
                icon: "11d",
                categoryName: ["Sunny","Moderate"]
              },
            },
            Clouds: {
              FC: {
                id: 801,
                description: "Few Clouds",
                icon: "11d",
                categoryName: ["Moderate"]
              },
              SC: {
                id: 802,
                description: "Scattered Clouds",
                icon: "11d",
                categoryName: ["Moderate"]
              },
              BC: {
                id: 803,
                description: "Broken Clouds",
                icon: "11d",
                categoryName: ["Moderate"]
              },
              OC: {
                id: 804,
                description: "Overcast Clouds",
                icon: "11d",
                categoryName: ["Moderate"]
              }
            }
          }
        },
        SixtyFivetoSeventyFive: {
          TempMin: 65,
          TempMax: 75,
          Weather: {
            Thunderstorm: {
              TLR: {
                id: 200,
                description: "thunderstorm with light rain",
                icon: "11d",
                categoryName: ["Rain", "Warm"]
              },
              TR: {
                id: 201,
                description: "thunderstorm with light rain",
                categoryName: ["Rain", "Warm"]
              },
              THR: {
                id: 202,
                description: "thunderstorm with heavy rain",
                categoryName: ["Rain", "Warm"]
              },
              LT: {
                id: 210,
                description: "light thunderstorm",
                categoryName: ["Rain", "Warm"]
              },
              T: {
                id: 211,
                description: "thunderstorm",
                categoryName: ["Rain", "Warm"]
              },
              HT: {
                id: 212,
                description: "heavy thunderstorm",
                categoryName: ["Rain", "Warm"]
              },
              RT: {
                id: 221,
                description: "ragged thunderstorm",
                categoryName: ["Rain", "Warm"]
              },
              TLD: {
                id: 230,
                description: "thunderstorm with light drizzle",
                categoryName: ["Rain", "Warm"]
              },
              TD: {
                id: 231,
                description: "thunderstorm with drizzle",
                categoryName: ["Rain", "Warm"]
              },
              THD: {
                id: 232,
                description: "thunderstorm with heavy drizzle",
                categoryName: ["Rain", "Warm"]
              },
            },
            Drizzle: {
              LID: {
                id: 300,
                description: "light intensity drizzle",
                icon: "11d",
                categoryName: ["Rain", "Warm"]
              },
              D: {
                id: 301,
                description: "drizzle",
                categoryName: ["Rain", "Warm"]
              },
              HID: {
                id: 302,
                description: "heavy intensity drizzle",
                categoryName: ["Rain", "Warm"]
              },
              LIDR: {
                id: 310,
                description: "light intensity drizzle rain",
                categoryName: ["Rain", "Warm"]
              },
              DR: {
                id: 311,
                description: "Drizzle Rain",
                categoryName: ["Rain", "Warm"]
              },
              HIDR: {
                id: 312,
                description: "heavy intensity drizzle rain",
                categoryName: ["Rain", "Warm"]
              },
              SRD: {
                id: 313,
                description: "shower rain and drizzle",
                categoryName: ["Rain", "Warm"]
              },
              HSRD: {
                id: 314,
                description: "heavy shower rain and drizzle",
                categoryName: ["Rain", "Warm"]
              },
              SD: {
                id: 321,
                description: "shower drizzle",
                categoryName: ["Rain", "Warm"]
              },
            },
            Rain: {
              LR: {
                id: 500,
                description: "Light Rain",
                icon: "11d",
                categoryName: ["Rain", "Warm"]
              },
              MR: {
                id: 501,
                description: "Moderate Rain",
                categoryName: ["Rain", "Warm"]
              },
              HIR: {
                id: 502,
                description: "heavy intensity rain",
                categoryName: ["Rain", "Warm"]
              },
              VHR: {
                id: 503,
                description: "Very heavy rain",
                categoryName: ["Rain", "Warm"]
              },
              ER: {
                id: 504,
                description: "Extreme Rain",
                categoryName: ["Rain", "Warm"]
              },
              FR: {
                id: 511,
                description: "Freezing Rain",
                categoryName: ["Rain", "Warm"]
              },
              LISR: {
                id: 520,
                description: "Light Intensity Shower Rain",
                categoryName: ["Rain", "Warm"]
              },
              SR: {
                id: 521,
                description: "Shower Rain",
                categoryName: ["Rain", "Warm"]
              },
              HISR: {
                id: 522,
                description: "Heavy Intensity Shower Rain",
                categoryName: ["Rain", "Warm"]
              },
              RSR: {
                id: 531,
                description: "ragged Shower Rain",
                categoryName: ["Rain", "Warm"]
              },
            },
            Snow: {
              LS: {
                id: 600,
                description: "Light Snow",
                icon: "11d",
                categoryName: ["Snow", "Warm"]
              },
              S: {
                id: 601,
                description: "Snow",
                categoryName: ["Snow", "Warm"]
              },
              HS: {
                id: 602,
                description: "heavy Snow",
                categoryName: ["Snow", "Warm"]
              },
              Sl: {
                id: 611,
                description: "Sleet",
                categoryName: ["Snow", "Warm"]
              },
              LSSl: {
                id: 612,
                description: "Light Shower Sleet",
                categoryName: ["Snow", "Warm"]
              },
              SSl: {
                id: 613,
                description: "Shower Sleet",
                categoryName: ["Snow", "Warm"]
              },
              LRS: {
                id: 615,
                description: "Light Rain and Snow",
                categoryName: ["Snow", "Warm"]
              },
              RS: {
                id: 616,
                description: "Rain and Snow",
                categoryName: ["Snow", "Warm"]
              },
              LSS: {
                id: 620,
                description: "Light Shower Snow",
                categoryName: ["Snow", "Warm"]
              },
              SS: {
                id: 621,
                description: "ragged Shower Snow",
                categoryName: ["Snow", "Warm"]
              },
              HSS: {
                id: 622,
                description: "Heavy Shower Snow",
                categoryName: ["Snow", "Warm"]
              },
            },
            Clear: {
              C: {
                id: 800,
                description: "Clear Sky",
                icon: "11d",
                categoryName: ["Sunny","Warm"]
              },
            },
            Clouds: {
              FC: {
                id: 801,
                description: "Few Clouds",
                icon: "11d",
                categoryName: ["Warm"]
              },
              SC: {
                id: 802,
                description: "Scattered Clouds",
                icon: "11d",
                categoryName: ["Warm"]
              },
              BC: {
                id: 803,
                description: "Broken Clouds",
                icon: "11d",
                categoryName: ["Warm"]
              },
              OC: {
                id: 804,
                description: "Overcast Clouds",
                icon: "11d",
                categoryName: ["Warm"]
              }
            }
          }
        },
        SeventyFiveAndUp: {
          TempMin: 76,
          TempMax: 140,
          Weather: {
            Thunderstorm: {
              TLR: {
                id: 200,
                description: "thunderstorm with light rain",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
              TR: {
                id: 201,
                description: "thunderstorm with light rain",
                categoryName: ["Rain", "Hot"]
              },
              THR: {
                id: 202,
                description: "thunderstorm with heavy rain",
                categoryName: ["Rain", "Hot"]
              },
              LT: {
                id: 210,
                description: "light thunderstorm",
                categoryName: ["Rain", "Hot"]
              },
              T: {
                id: 211,
                description: "thunderstorm",
                categoryName: ["Rain", "Hot"]
              },
              HT: {
                id: 212,
                description: "heavy thunderstorm",
                categoryName: ["Rain", "Hot"]
              },
              RT: {
                id: 221,
                description: "ragged thunderstorm",
                categoryName: ["Rain", "Hot"]
              },
              TLD: {
                id: 230,
                description: "thunderstorm with light drizzle",
                categoryName: ["Rain", "Hot"]
              },
              TD: {
                id: 231,
                description: "thunderstorm with drizzle",
                categoryName: ["Rain", "Hot"]
              },
              THD: {
                id: 232,
                description: "thunderstorm with heavy drizzle",
                categoryName: ["Rain", "Hot"]
              },
            },
            Drizzle: {
              LID: {
                id: 300,
                description: "light intensity drizzle",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
              D: {
                id: 301,
                description: "drizzle",
                categoryName: ["Rain", "Hot"]
              },
              HID: {
                id: 302,
                description: "heavy intensity drizzle",
                categoryName: ["Rain", "Hot"]
              },
              LIDR: {
                id: 310,
                description: "light intensity drizzle rain",
                categoryName: ["Rain", "Hot"]
              },
              DR: {
                id: 311,
                description: "Drizzle Rain",
                categoryName: ["Rain", "Hot"]
              },
              HIDR: {
                id: 312,
                description: "heavy intensity drizzle rain",
                categoryName: ["Rain", "Hot"]
              },
              SRD: {
                id: 313,
                description: "shower rain and drizzle",
                categoryName: ["Rain", "Hot"]
              },
              HSRD: {
                id: 314,
                description: "heavy shower rain and drizzle",
                categoryName: ["Rain", "Hot"]
              },
              SD: {
                id: 321,
                description: "shower drizzle",
                categoryName: ["Rain", "Hot"]
              },
            },
            Rain: {
              LR: {
                id: 500,
                description: "Light Rain",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
              MR: {
                id: 501,
                description: "Moderate Rain",
                categoryName: ["Rain", "Hot"]
              },
              HIR: {
                id: 502,
                description: "heavy intensity rain",
                categoryName: ["Rain", "Hot"]
              },
              VHR: {
                id: 503,
                description: "Very heavy rain",
                categoryName: ["Rain", "Hot"]
              },
              ER: {
                id: 504,
                description: "Extreme Rain",
                categoryName: ["Rain", "Hot"]
              },
              FR: {
                id: 511,
                description: "Freezing Rain",
                categoryName: ["Rain", "Hot"]
              },
              LISR: {
                id: 520,
                description: "Light Intensity Shower Rain",
                categoryName: ["Rain", "Hot"]
              },
              SR: {
                id: 521,
                description: "Shower Rain",
                categoryName: ["Rain", "Hot"]
              },
              HISR: {
                id: 522,
                description: "Heavy Intensity Shower Rain",
                categoryName: ["Rain", "Hot"]
              },
              RSR: {
                id: 531,
                description: "ragged Shower Rain",
                categoryName: ["Rain", "Hot"]
              },
            },
            Clear: {
              C: {
                id: 800,
                description: "Clear Sky",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
            },
            Clouds: {
              FC: {
                id: 801,
                description: "Few Clouds",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
              SC: {
                id: 802,
                description: "Scattered Clouds",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
              BC: {
                id: 803,
                description: "Broken Clouds",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              },
              OC: {
                id: 804,
                description: "Overcast Clouds",
                icon: "11d",
                categoryName: ["Rain", "Hot"]
              }
            }
          }
        }
    ]
  end

  private

  def category_params
    params.require(:category).permit(:title, :description)
  end

  def find_category
    @category = Category.find(params[:id])
  end
  end
