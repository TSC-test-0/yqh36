namespace guitarStore;

entity Product {
  key ID: UUID;
  productName: String(200);
  productDescription: String(500);
  targetAudience: Association to Audience;
  warehouse: Association to Warehouse;
  discount: Association to Discount;
}

entity Audience {
  key ID: UUID;
  audiencePitch: String(500);
  products: Association to many Product on products.targetAudience = $self;
}

entity Warehouse {
  key ID: UUID;
  stockCount: Integer;
  products: Association to many Product on products.warehouse = $self;
}

entity Discount {
  key ID: UUID;
  discountRate: Decimal(5,2);
  products: Association to many Product on products.discount = $self;
}

