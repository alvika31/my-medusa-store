import LineItemOptions from "./line-item-option";
import { formatAmount } from "medusa-react";
const WishlistItemCard = ({ wishlists, region }) => {
  return (
    <>
      {wishlists.length === 0 && (
        <div className="bg-red-200 text-red-500 p-3 mt-3 rounded">
          Wishlist Item Is Empty
        </div>
      )}
      <div className="my-5 grid grid-cols-2 gap-4">
        {wishlists.map((item, index) => {
          return (
            <div key={index} className="flex gap-x-3 my-3 items-center">
              <img src={item.thumbnail} width={150} alt="" />
              <div className="flex flex-col gap-y-1">
                <h3 className="text-md font-medium">{item?.title}</h3>
                <div className="flex flex-col gap-y-1">
                  {item.quantity === 0 ? (
                    <div className="bg-red-200 text-red-500 p-2 w-20 text-center text-xs rounded">
                      Sold Out
                    </div>
                  ) : (
                    <p className="text-xs">Qty: {item.quantity}</p>
                  )}

                  <LineItemOptions variant={item?.variant} />
                  <span className="text-xs">
                    {formatAmount({
                      amount: item.total || 0,
                      region: region,
                      includeTaxes: false,
                    })}
                  </span>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </>
  );
};

export default WishlistItemCard;
