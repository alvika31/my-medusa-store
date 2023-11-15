import { formatAmount } from "medusa-react";
import WishlistItemCard from "./wishlist-item-card";

const WishlistCard = ({ wishlist, isLoading }) => {
  return (
    <>
      {isLoading && <span>Loading...</span>}
      {wishlist && wishlist.wishlist && (
        <div>
          {wishlist.wishlist.length === 0 && (
            <div className="bg-red-200 text-red-500 p-3 rounded">
              Wishlist Is Empty
            </div>
          )}
          {wishlist.wishlist.map((item, index) => (
            <div key={index}>
              <div className="bg-gray-100 p-3 rounded flex justify-between">
                <p className="text-base-regular font-medium">
                  {" "}
                  {index + 1}. {item.title}
                </p>

                <div className="text-small-regular text-gray-700 flex items-center gap-x-2">
                  <p>Total:</p>
                  {formatAmount({
                    amount: item.total || 0,
                    region: item.region,
                    includeTaxes: false,
                  })}
                </div>
              </div>

              <WishlistItemCard
                wishlists={item.wishlists}
                region={item.region}
              />
            </div>
          ))}
        </div>
      )}
    </>
  );
};

export default WishlistCard;
