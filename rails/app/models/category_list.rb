class CategoryList
  CATEGORIES = [
    'afghani',
    'african',
    'senegalese',
    'southafrican',
    'newamerican',
    'tradamerican',
    'arabian',
    'argentine',
    'armenian',
    'asianfusion',
    'australian',
    'austrian',
    'bangladeshi',
    'bbq',
    'basque',
    'belgian',
    'brasseries',
    'brazilian',
    'breakfast_brunch',
    'british',
    'buffets',
    'burgers',
    'burmese',
    'cafes',
    'cafeteria',
    'cajun',
    'cambodian',
    'caribbean',
    'dominican',
    'haitian',
    'puertorican',
    'trinidadian',
    'catalan',
    'cheesesteaks',
    'chickenshop',
    'chicken_wings',
    'chinese',
    'cantonese',
    'dimsum',
    'hainan',
    'shanghainese',
    'szechuan',
    'comfortfood',
    'creperies',
    'cuban',
    'czech',
    'delis',
    'diners',
    'dinnertheater',
    'ethiopian',
    'hotdogs',
    'filipino',
    'fishnchips',
    'fondue',
    'food_court',
    'foodstands',
    'french',
    'gastropubs',
    'german',
    'gluten_free',
    'greek',
    'halal',
    'hawaiian',
    'himalayan',
    'hotdog',
    'hotpot',
    'hungarian',
    'iberian',
    'indpak',
    'indonesian',
    'irish',
    'italian',
    'calabrian',
    'sardinian',
    'tuscan',
    'japanese',
    'ramen',
    'teppanyaki',
    'korean',
    'kosher',
    'laotian',
    'latin',
    'colombian',
    'salvadoran',
    'venezuelan',
    'raw_food',
    'malaysian',
    'mediterranean',
    'falafel',
    'mexican',
    'mideastern',
    'egyptian',
    'lebanese',
    'modern_european',
    'mongolian',
    'moroccan',
    'nicaraguan',
    'pakistani',
    'persian',
    'peruvian',
    'pizza',
    'polish',
    'portuguese',
    'poutineries',
    'russian',
    'salad',
    'sandwiches',
    'scandinavian',
    'scottish',
    'seafood',
    'singaporean',
    'slovakian',
    'soulfood',
    'soup',
    'southern',
    'spanish',
    'srilankan',
    'steak',
    'supperclubs',
    'sushi',
    'syrian',
    'taiwanese',
    'tapas',
    'tapasmallplates',
    'mex',
    'thai',
    'turkish',
    'ukrainian',
    'uzbek',
    'vegan',
    'vegetarian',
    'vietnamese',
    'waffles'
  ]

  def self.get_random(amount)
    CATEGORIES.sample(amount).join(',')
  end
end