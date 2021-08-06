require '../../config/enviroment'
require '../../config/controllers/items_controller'

describe ItemController do
  describe '#create' do
    context 'when given valid params' do
      it 'should save item' do
        params = {
          id: 99,
          name: 'mie',
          price: 6000,
          category_name: "main dish",
          category_id: 1
        }

        ItemController.create_item(params)
        items = Item.all_with_categories

        expect(Item.all_with_categories)
      end
    end
  end
end
