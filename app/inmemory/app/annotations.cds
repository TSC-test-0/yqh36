using { guitarStoreSrv } from '../srv/service.cds';

annotate guitarStoreSrv.Product with @odata.draft.enabled;
annotate guitarStoreSrv.Audience with @odata.draft.enabled;
annotate guitarStoreSrv.Warehouse with @odata.draft.enabled;
annotate guitarStoreSrv.Discount with @odata.draft.enabled;
annotate guitarStoreSrv.Audience with @cds.odata.valuelist;
annotate guitarStoreSrv.Warehouse with @cds.odata.valuelist;
annotate guitarStoreSrv.Discount with @cds.odata.valuelist;
annotate guitarStoreSrv.Product with @cds.odata.valuelist;
annotate guitarStoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate guitarStoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate guitarStoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description'
};

annotate guitarStoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Label: 'Audience', Value: targetAudience_ID },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouse_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
];

annotate guitarStoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Label: 'Audience', Value: targetAudience_ID },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouse_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
  ]
};

annotate guitarStoreSrv.Product with {
  targetAudience @Common.Text: { $value: targetAudience.audiencePitch, ![@UI.TextArrangement]: #TextOnly }
};

annotate guitarStoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarStoreSrv.Audience with @UI.HeaderInfo: { TypeName: 'Audience', TypeNamePlural: 'Audiences', Title: { Value: audiencePitch } };
annotate guitarStoreSrv.Audience with {
  ID @Common.Text: { $value: audiencePitch, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Audience with @UI.Identification: [{ Value: audiencePitch }];
annotate guitarStoreSrv.Audience with {
  audiencePitch @title: 'Audience Pitch'
};

annotate guitarStoreSrv.Audience with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: audiencePitch }
];

annotate guitarStoreSrv.Audience with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: audiencePitch }
  ]
};

annotate guitarStoreSrv.Audience with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarStoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: stockCount } };
annotate guitarStoreSrv.Warehouse with {
  ID @Common.Text: { $value: stockCount, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Warehouse with @UI.Identification: [{ Value: stockCount }];
annotate guitarStoreSrv.Warehouse with {
  stockCount @title: 'Stock Count'
};

annotate guitarStoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: stockCount }
];

annotate guitarStoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: stockCount }
  ]
};

annotate guitarStoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarStoreSrv.Discount with @UI.HeaderInfo: { TypeName: 'Discount', TypeNamePlural: 'Discounts', Title: { Value: discountRate } };
annotate guitarStoreSrv.Discount with {
  ID @Common.Text: { $value: discountRate, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Discount with @UI.Identification: [{ Value: discountRate }];
annotate guitarStoreSrv.Discount with {
  discountRate @title: 'Discount Rate'
};

annotate guitarStoreSrv.Discount with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: discountRate }
];

annotate guitarStoreSrv.Discount with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: discountRate }
  ]
};

annotate guitarStoreSrv.Discount with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

