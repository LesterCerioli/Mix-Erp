--This table should not be localized.
INSERT INTO core.menus(menu_text, url, menu_code, level)
SELECT 'Sales', '~/Modules/Sales/Index.mix', 'SA', 0 UNION ALL
SELECT 'Purchase', '~/Modules/Purchase/Index.mix', 'PU', 0 UNION ALL
SELECT 'Products & Items', '~/Modules/Inventory/Index.mix', 'ITM', 0 UNION ALL
SELECT 'Finance', '~/Modules/Finance/Index.mix', 'FI', 0 UNION ALL
SELECT 'Back Office', '~/Modules/BackOffice/Index.mix', 'BO', 0;


INSERT INTO core.menus(menu_text, url, menu_code, level, parent_menu_id)
          SELECT 'Sales & Quotation', NULL, 'SAQ', 1, core.get_menu_id('SA')
UNION ALL SELECT 'Direct Sales', '~/Modules/Sales/DirectSales.mix', 'DRS', 2, core.get_menu_id('SAQ')
UNION ALL SELECT 'Sales Quotation', '~/Modules/Sales/Quotation.mix', 'SQ', 2, core.get_menu_id('SAQ')
UNION ALL SELECT 'Sales Order', '~/Modules/Sales/Order.mix', 'SO', 2, core.get_menu_id('SAQ')
UNION ALL SELECT 'Sales Delivery', '~/Modules/Sales/Delivery.mix', 'SD', 2, core.get_menu_id('SAQ')
UNION ALL SELECT 'Receipt from Customer', '~/Modules/Sales/Receipt.mix', 'RFC', 2, core.get_menu_id('SAQ')
UNION ALL SELECT 'Sales Return', '~/Modules/Sales/Return.mix', 'SR', 2, core.get_menu_id('SAQ')
UNION ALL SELECT 'Setup & Maintenance', NULL, 'SSM', 1, core.get_menu_id('SA')
UNION ALL SELECT 'Bonus Slab for Salespersons', '~/Modules/Sales/Setup/BonusSlabs.mix', 'ABS', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Bonus Slab Details', '~/Modules/Sales/Setup/BonusSlabDetails.mix', 'BSD', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Sales Teams', '~/Modules/Sales/Setup/Teams.mix', 'SST', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Salespersons', '~/Modules/Sales/Setup/Salespersons.mix', 'SSA', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Bonus Slab Assignment', '~/Modules/Sales/Setup/BonusSlabAssignment.mix', 'BSA', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Late Fees', '~/Modules/Sales/Setup/LateFees.mix', 'LF', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Payment Terms', '~/Modules/Sales/Setup/PaymentTerms.mix', 'PAT', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Recurring Invoices', '~/Modules/Sales/Setup/RecurringInvoices.mix', 'RI', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Recurring Invoice Setup', '~/Modules/Sales/Setup/RecurringInvoiceSetup.mix', 'RIS', 2, core.get_menu_id('SSM')
UNION ALL SELECT 'Sales Reports', NULL, 'SAR', 1, core.get_menu_id('SA')
UNION ALL SELECT 'Top Selling Items', '~/Modules/Sales/Reports/TopSellingItems.mix', 'SAR-TSI', 2, core.get_menu_id('SAR')
UNION ALL SELECT 'Purchase & Quotation', NULL, 'PUQ', 1, core.get_menu_id('PU')
UNION ALL SELECT 'Direct Purchase', '~/Modules/Purchase/DirectPurchase.mix', 'DRP', 2, core.get_menu_id('PUQ')
UNION ALL SELECT 'Purchase Order', '~/Modules/Purchase/Order.mix', 'PO', 2, core.get_menu_id('PUQ')
UNION ALL SELECT 'Purchase Reorder', '~/Modules/Purchase/Reorder.mix', 'PRO', 2, core.get_menu_id('PUQ')
UNION ALL SELECT 'GRN Entry', '~/Modules/Purchase/GRN.mix', 'GRN', 2, core.get_menu_id('PUQ')
UNION ALL SELECT 'Purchase Return', '~/Modules/Purchase/Return.mix', 'PR', 2, core.get_menu_id('PUQ')
UNION ALL SELECT 'Purchase Reports', NULL, 'PUR', 1, core.get_menu_id('PU')
UNION ALL SELECT 'Inventory Movements', NULL, 'IIM', 1, core.get_menu_id('ITM')
UNION ALL SELECT 'Stock Transfer Journal', '~/Modules/Inventory/Transfer.mix', 'STJ', 2, core.get_menu_id('IIM')
UNION ALL SELECT 'Stock Adjustments', '~/Modules/Inventory/Adjustment.mix', 'STA', 2, core.get_menu_id('IIM')
UNION ALL SELECT 'Setup & Maintenance', NULL, 'ISM', 1, core.get_menu_id('ITM')
UNION ALL SELECT 'Store Types', '~/Modules/Inventory/Setup/StoreTypes.mix', 'STT', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Stores', '~/Modules/Inventory/Setup/Stores.mix', 'STO', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Counter Setup', '~/Modules/BackOffice/Counters.mix', 'SCS', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Party Types', '~/Modules/Inventory/Setup/PartyTypes.mix', 'PT', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Party Accounts', '~/Modules/Inventory/Setup/Parties.mix', 'PA', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Shipping Addresses', '~/Modules/Inventory/Setup/ShippingAddresses.mix', 'PSA', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Item Maintenance', '~/Modules/Inventory/Setup/Items.mix', 'SSI', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Compound Items', '~/Modules/Inventory/Setup/CompoundItems.mix', 'SSC', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Compound Item Details', '~/Modules/Inventory/Setup/CompoundItemDetails.mix', 'SSCD', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Cost Prices', '~/Modules/Inventory/Setup/CostPrices.mix', 'ICP', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Selling Prices', '~/Modules/Inventory/Setup/SellingPrices.mix', 'ISP', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Item Groups', '~/Modules/Inventory/Setup/ItemGroups.mix', 'SIG', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Item Types', '~/Modules/Inventory/Setup/ItemTypes.mix', 'SIT', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Brands', '~/Modules/Inventory/Setup/Brands.mix', 'SSB', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Units of Measure', '~/Modules/Inventory/Setup/UOM.mix', 'UOM', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Compound Units of Measure', '~/Modules/Inventory/Setup/CUOM.mix', 'CUOM', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Shipper Information', '~/Modules/Inventory/Setup/Shippers.mix', 'SHI', 2, core.get_menu_id('ISM')
UNION ALL SELECT 'Reports', NULL, 'IR', 1, core.get_menu_id('ITM')
UNION ALL SELECT 'Inventory Account Statement', '~/Modules/Inventory/Reports/AccountStatement.mix', 'IAS', 2, core.get_menu_id('IR')
UNION ALL SELECT 'Transactions & Templates', NULL, 'FTT', 1, core.get_menu_id('FI')
UNION ALL SELECT 'Journal Voucher Entry', '~/Modules/Finance/JournalVoucher.mix', 'JVN', 2, core.get_menu_id('FTT')
UNION ALL SELECT 'Update Exchange Rates', '~/Modules/Finance/UpdateExchangeRates.mix', 'UER', 2, core.get_menu_id('FTT')
UNION ALL SELECT 'Voucher Verification', '~/Modules/Finance/VoucherVerification.mix', 'FVV', 2, core.get_menu_id('FTT')
UNION ALL SELECT 'End of Day Operation', '~/Modules/Finance/EODOperation.mix', 'EOD', 2, core.get_menu_id('FTT')
UNION ALL SELECT 'Setup & Maintenance', NULL, 'FSM', 1, core.get_menu_id('FI')
UNION ALL SELECT 'Chart of Accounts', '~/Modules/Finance/Setup/COA.mix', 'COA', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Currency Management', '~/Modules/Finance/Setup/Currencies.mix', 'CUR', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Bank Accounts', '~/Modules/Finance/Setup/BankAccounts.mix', 'CBA', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Ageing Slabs', '~/Modules/Finance/Setup/AgeingSlabs.mix', 'AGS', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Cash Flow Headings', '~/Modules/Finance/Setup/CashFlowHeadings.mix', 'CFH', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Cash Flow Setup', '~/Modules/Finance/Setup/CashFlowSetup.mix', 'CFS', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Cost Centers', '~/Modules/Finance/Setup/CostCenters.mix', 'CC', 2, core.get_menu_id('FSM')
UNION ALL SELECT 'Reports', NULL, 'FIR', 1, core.get_menu_id('FI')
UNION ALL SELECT 'Account Statement', '~/Modules/Finance/Reports/AccountStatement.mix', 'AS', 2, core.get_menu_id('FIR')
UNION ALL SELECT 'Trial Balance', '~/Modules/Finance/Reports/TrialBalance.mix', 'TB', 2, core.get_menu_id('FIR')
UNION ALL SELECT 'Profit & Loss Account', '~/Modules/Finance/Reports/ProfitAndLossAccount.mix', 'PLA', 2, core.get_menu_id('FIR')
UNION ALL SELECT 'Retained Earnings Statement', '~/Modules/Finance/Reports/RetainedEarnings.mix', 'RET', 2, core.get_menu_id('FIR')
UNION ALL SELECT 'Balance Sheet', '~/Modules/Finance/Reports/BalanceSheet.mix', 'BS', 2, core.get_menu_id('FIR')
UNION ALL SELECT 'Cash Flow', '~/Modules/Finance/Reports/CashFlow.mix', 'CF', 2, core.get_menu_id('FIR')
UNION ALL SELECT 'Tax Configuration', NULL, 'BOTC', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Tax Master', '~/Modules/BackOffice/Tax/TaxMaster.mix', 'TXM', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Tax Authorities', '~/Modules/BackOffice/Tax/TaxAuthorities.mix', 'TXA', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Sales Tax Types', '~/Modules/BackOffice/Tax/SalesTaxTypes.mix', 'STXT', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'State Sales Taxes', '~/Modules/BackOffice/Tax/StateSalesTaxes.mix', 'STST', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Counties Sales Taxes', '~/Modules/BackOffice/Tax/CountySalesTaxes.mix', 'CTST', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Sales Taxes', '~/Modules/BackOffice/Tax/SalesTaxes.mix', 'STX', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Sales Tax Details', '~/Modules/BackOffice/Tax/SalesTaxDetails.mix', 'STXD', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Tax Exempt Types', '~/Modules/BackOffice/Tax/TaxExemptTypes.mix', 'TXEXT', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Sales Tax Exempts', '~/Modules/BackOffice/Tax/SalesTaxExempts.mix', 'STXEX', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Sales Tax Exempt Details', '~/Modules/BackOffice/Tax/SalesTaxExemptDetails.mix', 'STXEXD', 2, core.get_menu_id('BOTC')
UNION ALL SELECT 'Miscellaneous Parameters', NULL, 'SMP', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Flags', '~/Modules/BackOffice/Flags.mix', 'TRF', 2, core.get_menu_id('SMP')
UNION ALL SELECT 'Audit Reports', NULL, 'SEAR', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Login View', '~/Reports/Office.Login.xml', 'SEAR-LV', 2, core.get_menu_id('SEAR')
UNION ALL SELECT 'Office Setup', NULL, 'SOS', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Office & Branch Setup', '~/Modules/BackOffice/Offices.mix', 'SOB', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Cash Repository Setup', '~/Modules/BackOffice/CashRepositories.mix', 'SCR', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Department Setup', '~/Modules/BackOffice/Departments.mix', 'SDS', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Role Management', '~/Modules/BackOffice/Roles.mix', 'SRM', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'User Management', '~/Modules/BackOffice/Users.mix', 'SUM', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Entity Setup', '~/Modules/BackOffice/Entities.mix', 'SES', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Industry Setup', '~/Modules/BackOffice/Industries.mix', 'SIS', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Country Setup', '~/Modules/BackOffice/Countries.mix', 'SCRS', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'State Setup', '~/Modules/BackOffice/States.mix', 'SSS', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'County Setup', '~/Modules/BackOffice/Counties.mix', 'SCTS', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Fiscal Year Information', '~/Modules/BackOffice/FiscalYear.mix', 'SFY', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Frequency & Fiscal Year Management', '~/Modules/BackOffice/Frequency.mix', 'SFR', 2, core.get_menu_id('SOS')
UNION ALL SELECT 'Policy Management', NULL, 'SPM', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Voucher Verification Policy', '~/Modules/BackOffice/Policy/VoucherVerification.mix', 'SVV', 2, core.get_menu_id('SPM')
UNION ALL SELECT 'Automatic Verification Policy', '~/Modules/BackOffice/Policy/AutoVerification.mix', 'SAV', 2, core.get_menu_id('SPM')
UNION ALL SELECT 'Menu Access Policy', '~/Modules/BackOffice/Policy/MenuAccess.mix', 'SMA', 2, core.get_menu_id('SPM')
UNION ALL SELECT 'GL Access Policy', '~/Modules/BackOffice/Policy/GLAccess.mix', 'SAP', 2, core.get_menu_id('SPM')
UNION ALL SELECT 'Store Policy', '~/Modules/BackOffice/Policy/Store.mix', 'SSP', 2, core.get_menu_id('SPM')
UNION ALL SELECT 'Admin Tools', NULL, 'SAT', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Database Statistics', '~/Modules/BackOffice/Admin/DatabaseStatistics.mix', 'DBSTAT', 2, core.get_menu_id('SAT')
UNION ALL SELECT 'Backup Database', '~/Modules/BackOffice/Admin/DatabaseBackup.mix', 'BAK', 2, core.get_menu_id('SAT')
UNION ALL SELECT 'Change User Password', '~/Modules/BackOffice/Admin/ChangePassword.mix', 'PWD', 2, core.get_menu_id('SAT')
UNION ALL SELECT 'Check Updates', '~/Modules/BackOffice/Admin/CheckUpdates.mix', 'UPD', 2, core.get_menu_id('SAT')
UNION ALL SELECT 'Translate MixERP', '~/Modules/BackOffice/Admin/LocalizeMixERP.mix', 'TRA', 2, core.get_menu_id('SAT')
UNION ALL SELECT 'One Time Setup', NULL, 'OTS', 1, core.get_menu_id('BO')
UNION ALL SELECT 'Opening Inventory', '~/Modules/BackOffice/OTS/OpeningInventory.mix', 'OTSI', 2, core.get_menu_id('OTS');


/********************************************************************************
Copyright (C) Binod Nepal, Mix Open Foundation (http://mixof.org).

This file is part of MixERP.

MixERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

MixERP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with MixERP.  If not, see <http://www.gnu.org/licenses/>.
***********************************************************************************/
--FRENCH
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('SA'), 'fr', 'ventes' UNION ALL
SELECT core.get_menu_id('PU'), 'fr', 'achat' UNION ALL
SELECT core.get_menu_id('ITM'), 'fr', 'Produits et Articles' UNION ALL
SELECT core.get_menu_id('FI'), 'fr', 'financement' UNION ALL
SELECT core.get_menu_id('BO'), 'fr', 'Back-Office' UNION ALL
SELECT core.get_menu_id('SAQ'), 'fr', 'Sales & Devis' UNION ALL
SELECT core.get_menu_id('DRS'), 'fr', 'Ventes directes' UNION ALL
SELECT core.get_menu_id('SQ'), 'fr', 'Devis de vente' UNION ALL
SELECT core.get_menu_id('SO'), 'fr', 'Commande client' UNION ALL
SELECT core.get_menu_id('SD'), 'fr', 'Vente livraison' UNION ALL
SELECT core.get_menu_id('RFC'), 'fr', 'R??ception du client' UNION ALL
SELECT core.get_menu_id('SR'), 'fr', 'Retour sur les ventes' UNION ALL
SELECT core.get_menu_id('SSM'), 'fr', 'Le programme d''installation & entretien' UNION ALL
SELECT core.get_menu_id('ABS'), 'fr', 'Dalle de bonus pour les vendeurs' UNION ALL
SELECT core.get_menu_id('BSD'), 'fr', 'D??tails du bonus dalle' UNION ALL
SELECT core.get_menu_id('SST'), 'fr', '??quipes de vente' UNION ALL
SELECT core.get_menu_id('SSA'), 'fr', 'Vendeurs/vendeuses' UNION ALL
SELECT core.get_menu_id('BSA'), 'fr', 'Affectation de dalle de bonus' UNION ALL
SELECT core.get_menu_id('LF'), 'fr', 'Frais de retard' UNION ALL
SELECT core.get_menu_id('PAT'), 'fr', 'Conditions de paiement' UNION ALL
SELECT core.get_menu_id('RI'), 'fr', 'Factures r??currentes' UNION ALL
SELECT core.get_menu_id('RIS'), 'fr', 'Param??tres des factures r??currentes' UNION ALL
SELECT core.get_menu_id('SAR'), 'fr', 'Rapports sur les ventes' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'fr', 'Haut de la page points de vente' UNION ALL
SELECT core.get_menu_id('PUQ'), 'fr', 'Achat & citation' UNION ALL
SELECT core.get_menu_id('DRP'), 'fr', 'Achat direct' UNION ALL
SELECT core.get_menu_id('PO'), 'fr', 'Bon de commande' UNION ALL
SELECT core.get_menu_id('PRO'), 'fr', 'Achat Reorder' UNION ALL
SELECT core.get_menu_id('GRN'), 'fr', 'Entr??e GRN' UNION ALL
SELECT core.get_menu_id('PR'), 'fr', 'Achat de retour' UNION ALL
SELECT core.get_menu_id('PUR'), 'fr', 'Rapports d''achat' UNION ALL
SELECT core.get_menu_id('IIM'), 'fr', 'Mouvements de stock' UNION ALL
SELECT core.get_menu_id('STJ'), 'fr', 'Feuille de transfert de stock' UNION ALL
SELECT core.get_menu_id('STA'), 'fr', 'Ajustements de stocks' UNION ALL
SELECT core.get_menu_id('ISM'), 'fr', 'Le programme d''installation & entretien' UNION ALL
SELECT core.get_menu_id('STT'), 'fr', 'Types de magasins' UNION ALL
SELECT core.get_menu_id('STO'), 'fr', 'Magasins' UNION ALL
SELECT core.get_menu_id('SCS'), 'fr', 'Installation de compteur' UNION ALL
SELECT core.get_menu_id('PT'), 'fr', 'Types de partie' UNION ALL
SELECT core.get_menu_id('PA'), 'fr', 'Comptes de tiers' UNION ALL
SELECT core.get_menu_id('PSA'), 'fr', 'Adresses d''exp??dition' UNION ALL
SELECT core.get_menu_id('SSI'), 'fr', 'Gestion des Articles' UNION ALL
SELECT core.get_menu_id('SSC'), 'fr', 'Compos?? d''??l??ments' UNION ALL
SELECT core.get_menu_id('SSCD'), 'fr', 'D??tails de l''??l??ment compos??' UNION ALL
SELECT core.get_menu_id('ICP'), 'fr', 'Prix de revient' UNION ALL
SELECT core.get_menu_id('ISP'), 'fr', 'Prix de vente' UNION ALL
SELECT core.get_menu_id('SIG'), 'fr', 'Groupes d''articles' UNION ALL
SELECT core.get_menu_id('SIT'), 'fr', 'Types d''??l??ments' UNION ALL
SELECT core.get_menu_id('SSB'), 'fr', 'Marques' UNION ALL
SELECT core.get_menu_id('UOM'), 'fr', 'Unit??s de mesure' UNION ALL
SELECT core.get_menu_id('CUOM'), 'fr', 'Compos?? d''unit??s de mesure' UNION ALL
SELECT core.get_menu_id('SHI'), 'fr', 'Informations de l''exp??diteur' UNION ALL
SELECT core.get_menu_id('IR'), 'fr', 'Rapports' UNION ALL
SELECT core.get_menu_id('IAS'), 'fr', 'Relev?? de compte de l''inventaire' UNION ALL
SELECT core.get_menu_id('FTT'), 'fr', 'Mod??les de & de transactions' UNION ALL
SELECT core.get_menu_id('JVN'), 'fr', 'Bon ??criture' UNION ALL
SELECT core.get_menu_id('UER'), 'fr', 'Mise ?? jour des taux de change' UNION ALL
SELECT core.get_menu_id('FVV'), 'fr', 'V??rification du bon' UNION ALL
SELECT core.get_menu_id('EOD'), 'fr', 'Fin de l''op??ration de la journ??e' UNION ALL
SELECT core.get_menu_id('FSM'), 'fr', 'Le programme d''installation & entretien' UNION ALL
SELECT core.get_menu_id('COA'), 'fr', 'Plan comptable' UNION ALL
SELECT core.get_menu_id('CUR'), 'fr', 'Gestion de la devise' UNION ALL
SELECT core.get_menu_id('CBA'), 'fr', 'Comptes bancaires' UNION ALL
SELECT core.get_menu_id('AGS'), 'fr', 'Vieillissement des dalles' UNION ALL
SELECT core.get_menu_id('CFH'), 'fr', 'Positions de tr??sorerie' UNION ALL
SELECT core.get_menu_id('CFS'), 'fr', 'Configuration des flux de tr??sorerie' UNION ALL
SELECT core.get_menu_id('CC'), 'fr', 'Centres de co??ts' UNION ALL
SELECT core.get_menu_id('FIR'), 'fr', 'Rapports' UNION ALL
SELECT core.get_menu_id('AS'), 'fr', 'Relev?? de compte' UNION ALL
SELECT core.get_menu_id('TB'), 'fr', 'Balance de v??rification' UNION ALL
SELECT core.get_menu_id('PLA'), 'fr', 'Profit & compte de la perte' UNION ALL
SELECT core.get_menu_id('BS'), 'fr', 'Bilan' UNION ALL
SELECT core.get_menu_id('RET'), 'fr', 'Des B??n??fices Non R??partis' UNION ALL
SELECT core.get_menu_id('CF'), 'fr', 'Flux de tr??sorerie' UNION ALL
SELECT core.get_menu_id('BOTC'), 'fr', 'Configuration de l''imp??t' UNION ALL
SELECT core.get_menu_id('TXM'), 'fr', 'Ma??tre de l''imp??t' UNION ALL
SELECT core.get_menu_id('TXA'), 'fr', 'Administration fiscale' UNION ALL
SELECT core.get_menu_id('STXT'), 'fr', 'Types de taxe de vente' UNION ALL
SELECT core.get_menu_id('STST'), 'fr', '??tat des Taxes de vente' UNION ALL
SELECT core.get_menu_id('CTST'), 'fr', 'Taxes de vente de comt??s' UNION ALL
SELECT core.get_menu_id('STX'), 'fr', 'Taxes de vente' UNION ALL
SELECT core.get_menu_id('STXD'), 'fr', 'D??tails de la taxe de vente' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'fr', 'Types exon??r??s de taxe' UNION ALL
SELECT core.get_menu_id('STXEX'), 'fr', 'Exempte de la taxe de vente' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'fr', 'D??tails exon??r?? de taxe de vente' UNION ALL
SELECT core.get_menu_id('SMP'), 'fr', 'Divers param??tres' UNION ALL
SELECT core.get_menu_id('TRF'), 'fr', 'Drapeaux' UNION ALL
SELECT core.get_menu_id('SEAR'), 'fr', 'Rapports d''audit' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'fr', 'Vue de l''ouverture de session' UNION ALL
SELECT core.get_menu_id('SOS'), 'fr', 'Installation de Office' UNION ALL
SELECT core.get_menu_id('SOB'), 'fr', 'Bureau & de la direction g??n??rale de la configuration' UNION ALL
SELECT core.get_menu_id('SCR'), 'fr', 'Installation de d??p??t comptant' UNION ALL
SELECT core.get_menu_id('SDS'), 'fr', 'D??partement installation' UNION ALL
SELECT core.get_menu_id('SRM'), 'fr', 'Gestion des r??les' UNION ALL
SELECT core.get_menu_id('SUM'), 'fr', 'Gestion des utilisateurs' UNION ALL
SELECT core.get_menu_id('SES'), 'fr', 'Configuration de l''entit??' UNION ALL
SELECT core.get_menu_id('SIS'), 'fr', 'Installation de l''industrie' UNION ALL
SELECT core.get_menu_id('SCRS'), 'fr', 'Programme d''installation de pays' UNION ALL
SELECT core.get_menu_id('SSS'), 'fr', 'Installation de l''??tat' UNION ALL
SELECT core.get_menu_id('SCTS'), 'fr', 'Comt?? de Setup' UNION ALL
SELECT core.get_menu_id('SFY'), 'fr', 'Informations de l''exercice' UNION ALL
SELECT core.get_menu_id('SFR'), 'fr', 'Fr??quence & la gestion de l''exercice' UNION ALL
SELECT core.get_menu_id('SPM'), 'fr', 'Gestion des strat??gies de' UNION ALL
SELECT core.get_menu_id('SVV'), 'fr', 'Politique sur la v??rification bon' UNION ALL
SELECT core.get_menu_id('SAV'), 'fr', 'Politique sur la v??rification automatique' UNION ALL
SELECT core.get_menu_id('SMA'), 'fr', 'Strat??gie d''acc??s menu' UNION ALL
SELECT core.get_menu_id('SAP'), 'fr', 'Strat??gie d''acc??s GL' UNION ALL
SELECT core.get_menu_id('SSP'), 'fr', 'Politique de boutique' UNION ALL
SELECT core.get_menu_id('SAT'), 'fr', 'Outils d''administration' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'fr', 'Outil de requ??te SQL' UNION ALL
SELECT core.get_menu_id('BAK'), 'fr', 'Sauvegarde base de donn??es' UNION ALL
SELECT core.get_menu_id('PWD'), 'fr', 'Changer mot de passe utilisateur' UNION ALL
SELECT core.get_menu_id('UPD'), 'fr', 'V??rifiez Mise ?? jour' UNION ALL
SELECT core.get_menu_id('TRA'), 'fr', 'Traduire MixERP' UNION ALL
SELECT core.get_menu_id('OTS'), 'fr', 'Un r??glage de l''heure' UNION ALL
SELECT core.get_menu_id('OTSI'), 'fr', 'Stock d''ouverture';

--GERMAN
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('STA'), 'de', 'Auf Anpassungen' UNION ALL
SELECT core.get_menu_id('PWD'), 'de', 'Benutzerpasswort ??ndern' UNION ALL
SELECT core.get_menu_id('UER'), 'de', 'Update Wechselkurse' UNION ALL
SELECT core.get_menu_id('BO'), 'de', 'Back Office' UNION ALL
SELECT core.get_menu_id('BAK'), 'de', 'Datenbank sichern' UNION ALL
SELECT core.get_menu_id('TB'), 'de', 'Rohbilanz' UNION ALL
SELECT core.get_menu_id('BS'), 'de', 'Bilanz' UNION ALL
SELECT core.get_menu_id('TRF'), 'de', 'Flaggen' UNION ALL
SELECT core.get_menu_id('BSA'), 'de', 'Bonus Slab Zuordnung' UNION ALL
SELECT core.get_menu_id('BSD'), 'de', 'Bonus Slab-Details' UNION ALL
SELECT core.get_menu_id('CC'), 'de', 'Kostenstellen' UNION ALL
SELECT core.get_menu_id('PU'), 'de', 'Kauf' UNION ALL
SELECT core.get_menu_id('PUQ'), 'de', 'Einkauf & Quotation' UNION ALL
SELECT core.get_menu_id('DRP'), 'de', 'Direktkauf' UNION ALL
SELECT core.get_menu_id('PRO'), 'de', 'Kauf Reorder' UNION ALL
SELECT core.get_menu_id('PR'), 'de', 'Kauf Return' UNION ALL
SELECT core.get_menu_id('SVV'), 'de', 'Gutschein Verification Politik' UNION ALL
SELECT core.get_menu_id('PAT'), 'de', 'Zahlungsbedingungen' UNION ALL
SELECT core.get_menu_id('BOTC'), 'de', 'Steuerkonfiguration' UNION ALL
SELECT core.get_menu_id('SSM'), 'de', 'Einrichtung und Wartung' UNION ALL
SELECT core.get_menu_id('ISM'), 'de', 'Einrichtung und Wartung' UNION ALL
SELECT core.get_menu_id('FSM'), 'de', 'Einrichtung und Wartung' UNION ALL
SELECT core.get_menu_id('CBA'), 'de', 'Bankkonten' UNION ALL
SELECT core.get_menu_id('PA'), 'de', 'Party-Accounts' UNION ALL
SELECT core.get_menu_id('SQ'), 'de', 'Vertrieb Quotation' UNION ALL
SELECT core.get_menu_id('SA'), 'de', 'Vertrieb' UNION ALL
SELECT core.get_menu_id('PLA'), 'de', 'Gewinn- und Verlustrechnung' UNION ALL
SELECT core.get_menu_id('SSCD'), 'de', 'Verbindung Einzelteil-Details' UNION ALL
SELECT core.get_menu_id('STXD'), 'de', 'Umsatzsteuer-Details' UNION ALL
SELECT core.get_menu_id('PSA'), 'de', 'Lieferadressen' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'de', 'Login Zeige' UNION ALL
SELECT core.get_menu_id('SD'), 'de', 'Vertrieb Lieferung' UNION ALL
SELECT core.get_menu_id('SST'), 'de', 'Vertriebsteams' UNION ALL
SELECT core.get_menu_id('SOB'), 'de', 'B??ro & Filiale einrichten' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'de', 'Datenbankstatistik' UNION ALL
SELECT core.get_menu_id('IAS'), 'de', 'Bestandskontoauszug' UNION ALL
SELECT core.get_menu_id('AS'), 'de', 'Kontoauszug' UNION ALL
SELECT core.get_menu_id('RI'), 'de', 'Wiederkehrende Rechnungen' UNION ALL
SELECT core.get_menu_id('SAT'), 'de', 'Admin Tools' UNION ALL
SELECT core.get_menu_id('EOD'), 'de', 'End of Day Betrieb' UNION ALL
SELECT core.get_menu_id('FI'), 'de', 'Finanzen' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'de', 'Steuerbefreiung Typen' UNION ALL
SELECT core.get_menu_id('SFY'), 'de', 'Gesch??ftsjahresinformationen' UNION ALL
SELECT core.get_menu_id('TXA'), 'de', 'Steuerbeh??rden' UNION ALL
SELECT core.get_menu_id('CF'), 'de', 'Cashflow' UNION ALL
SELECT core.get_menu_id('CFH'), 'de', 'Kapitalfluss??berschriften' UNION ALL
SELECT core.get_menu_id('SRM'), 'de', 'Rollenverwaltung' UNION ALL
SELECT core.get_menu_id('SUM'), 'de', 'Benutzerverwaltung' UNION ALL
SELECT core.get_menu_id('SFR'), 'de', 'Frequenz & Gesch??ftsjahr Verwaltung' UNION ALL
SELECT core.get_menu_id('CUR'), 'de', 'W??hrungsmanagement' UNION ALL
SELECT core.get_menu_id('SPM'), 'de', 'Policy Management' UNION ALL
SELECT core.get_menu_id('SAP'), 'de', 'Hauptbuch-Richtlinien' UNION ALL
SELECT core.get_menu_id('SIG'), 'de', 'Artikelgruppen' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'de', 'Sales Tax Exempt Einzelheiten' UNION ALL
SELECT core.get_menu_id('CTST'), 'de', 'Grafschaft Umsatzsteuer' UNION ALL
SELECT core.get_menu_id('STST'), 'de', 'State Sales Taxes' UNION ALL
SELECT core.get_menu_id('STX'), 'de', 'Umsatzsteuer' UNION ALL
SELECT core.get_menu_id('SHI'), 'de', 'Shipper Informationen' UNION ALL
SELECT core.get_menu_id('SOS'), 'de', 'Office Setup' UNION ALL
SELECT core.get_menu_id('OTSI'), 'de', '??ffnungs Inventar' UNION ALL
SELECT core.get_menu_id('STXEX'), 'de', 'Umsatzsteuer befreit' UNION ALL
SELECT core.get_menu_id('SSI'), 'de', 'Artikelpflege' UNION ALL
SELECT core.get_menu_id('SSC'), 'de', 'Compound Artikel' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'de', 'Meistverkaufte Artikel' UNION ALL
SELECT core.get_menu_id('STJ'), 'de', 'Umlagerung Blatt' UNION ALL
SELECT core.get_menu_id('JVN'), 'de', 'Journal Gutschein Eintrag' UNION ALL
SELECT core.get_menu_id('AGS'), 'de', 'Ageing Brammen' UNION ALL
SELECT core.get_menu_id('SSB'), 'de', 'Brands' UNION ALL
SELECT core.get_menu_id('GRN'), 'de', 'Wareneingang Hinweis Eintrag' UNION ALL
SELECT core.get_menu_id('TXM'), 'de', 'Steuern Meister' UNION ALL
SELECT core.get_menu_id('IIM'), 'de', 'Lagerbewegungen' UNION ALL
SELECT core.get_menu_id('OTS'), 'de', 'Eine Zeiteinstellung' UNION ALL
SELECT core.get_menu_id('PO'), 'de', 'Auftragsbest??tigung' UNION ALL
SELECT core.get_menu_id('ISP'), 'de', 'Verkaufs Preise' UNION ALL
SELECT core.get_menu_id('SMP'), 'de', 'Verschiedene Parameter' UNION ALL
SELECT core.get_menu_id('SO'), 'de', 'Sales Order' UNION ALL
SELECT core.get_menu_id('COA'), 'de', 'Kontenplan' UNION ALL
SELECT core.get_menu_id('SSP'), 'de', 'Speicher-Politik' UNION ALL
SELECT core.get_menu_id('SMA'), 'de', 'Men??-Richtlinien' UNION ALL
SELECT core.get_menu_id('SAV'), 'de', 'Automatische Verifikation Politik' UNION ALL
SELECT core.get_menu_id('ICP'), 'de', 'Kosten Preise' UNION ALL
SELECT core.get_menu_id('ITM'), 'de', 'Produkte & Angebote' UNION ALL
SELECT core.get_menu_id('RFC'), 'de', 'Empfang vom Kunden' UNION ALL
SELECT core.get_menu_id('IR'), 'de', 'Berichte' UNION ALL
SELECT core.get_menu_id('FIR'), 'de', 'Berichte' UNION ALL
SELECT core.get_menu_id('SEAR'), 'de', 'Pr??fungsberichte' UNION ALL
SELECT core.get_menu_id('PUR'), 'de', 'Kauf Berichte' UNION ALL
SELECT core.get_menu_id('SAR'), 'de', 'Verkaufsberichte' UNION ALL
SELECT core.get_menu_id('SR'), 'de', 'Absatzertrag' UNION ALL
SELECT core.get_menu_id('SCS'), 'de', 'Z??hler-Setup' UNION ALL
SELECT core.get_menu_id('SCTS'), 'de', 'Grafschaft-Setup' UNION ALL
SELECT core.get_menu_id('SDS'), 'de', 'Abteilung einrichten' UNION ALL
SELECT core.get_menu_id('SCR'), 'de', 'Barzahlung Repository einrichten' UNION ALL
SELECT core.get_menu_id('SES'), 'de', 'Entity-Setup' UNION ALL
SELECT core.get_menu_id('SSS'), 'de', 'staatliche Einrichtung' UNION ALL
SELECT core.get_menu_id('SIS'), 'de', 'Industrie-Setup' UNION ALL
SELECT core.get_menu_id('RIS'), 'de', 'Wiederkehrende Rechnung einrichten' UNION ALL
SELECT core.get_menu_id('SCRS'), 'de', 'Land-Setup' UNION ALL
SELECT core.get_menu_id('ABS'), 'de', 'Bonus Bramme f??r Aussendienst' UNION ALL
SELECT core.get_menu_id('STO'), 'de', 'Shops' UNION ALL
SELECT core.get_menu_id('LF'), 'de', 'Sp??te Geb??hren' UNION ALL
SELECT core.get_menu_id('STT'), 'de', 'Shop Typen' UNION ALL
SELECT core.get_menu_id('STXT'), 'de', 'Umsatzsteuerarten' UNION ALL
SELECT core.get_menu_id('PT'), 'de', 'Party-Typen' UNION ALL
SELECT core.get_menu_id('FTT'), 'de', 'Transaktionen und Vorlagen' UNION ALL
SELECT core.get_menu_id('UOM'), 'de', 'Ma??einheiten' UNION ALL
SELECT core.get_menu_id('CUOM'), 'de', 'Verbindung Ma??einheiten' UNION ALL
SELECT core.get_menu_id('DRS'), 'de', 'Direct Sales' UNION ALL
SELECT core.get_menu_id('SAQ'), 'de', 'Vertrieb Quotation' UNION ALL
SELECT core.get_menu_id('SSA'), 'de', 'Aussendienst' UNION ALL
SELECT core.get_menu_id('FVV'), 'de', 'Gutschein Verification';

--RUSSIAN
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'ru', '?????????? ?????????? ?????? ??????????????????' UNION ALL
SELECT core.get_menu_id('AGS'), 'ru', '???????????????? ??????????' UNION ALL
SELECT core.get_menu_id('AS'), 'ru', '?????????????? ???? ??????????' UNION ALL
SELECT core.get_menu_id('BAK'), 'ru', '?????????????????? ?????????????????????? ???????? ????????????' UNION ALL
SELECT core.get_menu_id('BO'), 'ru', '??????-????????' UNION ALL
SELECT core.get_menu_id('BOTC'), 'ru', '?????????????????? ????????????????????????' UNION ALL
SELECT core.get_menu_id('BS'), 'ru', '????????????' UNION ALL
SELECT core.get_menu_id('BSA'), 'ru', '?????????? ?????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('BSD'), 'ru', '?????????? ?????????? ??????????????????????' UNION ALL
SELECT core.get_menu_id('CBA'), 'ru', '???????????????????? ??????????' UNION ALL
SELECT core.get_menu_id('CC'), 'ru', '??????' UNION ALL
SELECT core.get_menu_id('CF'), 'ru', '???????????????? ??????????' UNION ALL
SELECT core.get_menu_id('CFH'), 'ru', '???????????????? ???????????????? ?????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('COA'), 'ru', '???????? ????????????' UNION ALL
SELECT core.get_menu_id('CTST'), 'ru', '???????????????? ?????????? ?? ????????????' UNION ALL
SELECT core.get_menu_id('CUOM'), 'ru', '?????????????????? ?????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('CUR'), 'ru', '???????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'ru', '???????????????????? ???????? ????????????' UNION ALL
SELECT core.get_menu_id('DRP'), 'ru', '???????????? ??????????????' UNION ALL
SELECT core.get_menu_id('DRS'), 'ru', '???????????? ??????????????' UNION ALL
SELECT core.get_menu_id('EOD'), 'ru', '?????????? ?????????????????????????? ??????' UNION ALL
SELECT core.get_menu_id('FI'), 'ru', '??????????????' UNION ALL
SELECT core.get_menu_id('FIR'), 'ru', '????????????' UNION ALL
SELECT core.get_menu_id('FSM'), 'ru', '?????????????????? ?? ????????????????????????' UNION ALL
SELECT core.get_menu_id('FTT'), 'ru', '???????????????? ?? ??????????????' UNION ALL
SELECT core.get_menu_id('FVV'), 'ru', '???????????? ????????????????' UNION ALL
SELECT core.get_menu_id('GRN'), 'ru', '???????????? ?????????????????? ???????????????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('IAS'), 'ru', '?????????????? ???? ?????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('ICP'), 'ru', '?????????????????? ????????' UNION ALL
SELECT core.get_menu_id('IIM'), 'ru', '???????????????????????????? ????????????????' UNION ALL
SELECT core.get_menu_id('IR'), 'ru', '????????????' UNION ALL
SELECT core.get_menu_id('ISM'), 'ru', '?????????????????? ?? ????????????????????????' UNION ALL
SELECT core.get_menu_id('ISP'), 'ru', '?????????????????? ????????' UNION ALL
SELECT core.get_menu_id('ITM'), 'ru', '???????????????? ?? ????????????' UNION ALL
SELECT core.get_menu_id('JVN'), 'ru', '???????????? ???????????? ????????????' UNION ALL
SELECT core.get_menu_id('LF'), 'ru', '?????????? ???? ?????????????????? ????????????????' UNION ALL
SELECT core.get_menu_id('OTS'), 'ru', '???????? ?????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('OTSI'), 'ru', '???????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('PA'), 'ru', '?????????????????? ??????????' UNION ALL
SELECT core.get_menu_id('PAT'), 'ru', '?????????????? ??????????????' UNION ALL
SELECT core.get_menu_id('PLA'), 'ru', '?????????????? ?? ??????????????' UNION ALL
SELECT core.get_menu_id('PO'), 'ru', '?????????? ???? ??????????????' UNION ALL
SELECT core.get_menu_id('PR'), 'ru', '?????????????? ??????????????' UNION ALL
SELECT core.get_menu_id('PRO'), 'ru', '?????????????? Reorder' UNION ALL
SELECT core.get_menu_id('PSA'), 'ru', '???????????????? ????????????' UNION ALL
SELECT core.get_menu_id('PT'), 'ru', '?????????????????? ????????' UNION ALL
SELECT core.get_menu_id('PU'), 'ru', '??????????????' UNION ALL
SELECT core.get_menu_id('PUQ'), 'ru', '?????????????? ?? ????????????' UNION ALL
SELECT core.get_menu_id('PUR'), 'ru', '?????????????? ????????????' UNION ALL
SELECT core.get_menu_id('PWD'), 'ru', '???????????????? ???????????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('RFC'), 'ru', '?????????????????? ???? ??????????????' UNION ALL
SELECT core.get_menu_id('RI'), 'ru', '?????????????????????????? ??????????' UNION ALL
SELECT core.get_menu_id('RIS'), 'ru', '?????????????????????????? ?????????????????? ????????' UNION ALL
SELECT core.get_menu_id('SA'), 'ru', '??????????????' UNION ALL
SELECT core.get_menu_id('SAP'), 'ru', '???????????????? ?????????????? GL' UNION ALL
SELECT core.get_menu_id('SAQ'), 'ru', '???????????? ????????????' UNION ALL
SELECT core.get_menu_id('SAR'), 'ru', '???????????? ???? ????????????????' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'ru', '?????????? ?????????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('SAT'), 'ru', '???????????????? ???????????????????????????? ??????????????????????' UNION ALL
SELECT core.get_menu_id('SAV'), 'ru', '???????????????? ???????????????????????????? ????????????????' UNION ALL
SELECT core.get_menu_id('SCR'), 'ru', '?????????????????? ?????????????????? Repository' UNION ALL
SELECT core.get_menu_id('SCRS'), 'ru', '???????????? Setup' UNION ALL
SELECT core.get_menu_id('SCS'), 'ru', '?????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('SCTS'), 'ru', '?????????????????? County' UNION ALL
SELECT core.get_menu_id('SD'), 'ru', '?????????????? ????????????????' UNION ALL
SELECT core.get_menu_id('SDS'), 'ru', '?????????????????? ??????????????????????' UNION ALL
SELECT core.get_menu_id('SEAR'), 'ru', '???????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'ru', '?????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('SES'), 'ru', 'Entity Setup' UNION ALL
SELECT core.get_menu_id('SFR'), 'ru', '???????????????????? ???????????????? ?? ???????????????????? ??????' UNION ALL
SELECT core.get_menu_id('SFY'), 'ru', '???????????????????? ?????? ????????????????????' UNION ALL
SELECT core.get_menu_id('SHI'), 'ru', '?????????????????????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('SIG'), 'ru', '???????????? ??????????????' UNION ALL
SELECT core.get_menu_id('SIS'), 'ru', '?????????????????? ????????????????????????????' UNION ALL
SELECT core.get_menu_id('SMA'), 'ru', '???????? ???????????????? ??????????????' UNION ALL
SELECT core.get_menu_id('SMP'), 'ru', '???????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('SO'), 'ru', '?????????????? ????????????????' UNION ALL
SELECT core.get_menu_id('SOB'), 'ru', '???????????????????? ?? ?????????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('SOS'), 'ru', '?????????????????? ?????????????????? Office' UNION ALL
SELECT core.get_menu_id('SPM'), 'ru', '???????????????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('SQ'), 'ru', '???????????? ????????????' UNION ALL
SELECT core.get_menu_id('SR'), 'ru', '?????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('SRM'), 'ru', '???????? ????????????????????' UNION ALL
SELECT core.get_menu_id('SSA'), 'ru', '????????????????' UNION ALL
SELECT core.get_menu_id('SSB'), 'ru', '????????????' UNION ALL
SELECT core.get_menu_id('SSC'), 'ru', '?????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('SSCD'), 'ru', '???????????????????? ?????????? ??????????????????????' UNION ALL
SELECT core.get_menu_id('SSI'), 'ru', '?????????? ???????????????????????? ????????????????????????' UNION ALL
SELECT core.get_menu_id('SSM'), 'ru', '?????????????????? ?? ????????????????????????' UNION ALL
SELECT core.get_menu_id('SSP'), 'ru', '???????????????? ????????????????' UNION ALL
SELECT core.get_menu_id('SSS'), 'ru', '?????????????????????????????? Setup' UNION ALL
SELECT core.get_menu_id('SST'), 'ru', '?????????????? ??????????????' UNION ALL
SELECT core.get_menu_id('STA'), 'ru', '???????? ??????????????????????????' UNION ALL
SELECT core.get_menu_id('STJ'), 'ru', '?????????????????????? ???????????? ????????????' UNION ALL
SELECT core.get_menu_id('STO'), 'ru', '????????????????' UNION ALL
SELECT core.get_menu_id('STST'), 'ru', '?????????????????????????????? ?????????????? ?? ????????????' UNION ALL
SELECT core.get_menu_id('STT'), 'ru', '???????? ??????????????' UNION ALL
SELECT core.get_menu_id('STX'), 'ru', '?????????? ?? ????????????' UNION ALL
SELECT core.get_menu_id('STXD'), 'ru', '?????????? ???? ?????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('STXEX'), 'ru', '?????????? ???? ?????????????? ????????????????????' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'ru', '?????????? ???? ?????????????? ?????????????????????????? ??????????????????' UNION ALL
SELECT core.get_menu_id('STXT'), 'ru', '???????? ?????????? ???? ??????????????' UNION ALL
SELECT core.get_menu_id('SUM'), 'ru', '???????????????????? ????????????????????????????' UNION ALL
SELECT core.get_menu_id('SVV'), 'ru', '???????????????? ???????????? ????????????????' UNION ALL
SELECT core.get_menu_id('TB'), 'ru', '?????????????? ????????????' UNION ALL
SELECT core.get_menu_id('TRF'), 'ru', '??????????' UNION ALL
SELECT core.get_menu_id('TXA'), 'ru', '?????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'ru', '?????????????????????????? ???? ?????????????????????????????? ????????' UNION ALL
SELECT core.get_menu_id('TXM'), 'ru', '?????????????????? ????????????' UNION ALL
SELECT core.get_menu_id('UER'), 'ru', 'Update Wechselkurse' UNION ALL
SELECT core.get_menu_id('UOM'), 'ru', '?????????????? ??????????????????';

--JAPANESE

INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'ja', '??????????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('AGS'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('AS'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('BAK'), 'ja', '??????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('BO'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('BOTC'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('BS'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('BSA'), 'ja', '????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('BSD'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('CBA'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('CC'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('CF'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('CFH'), 'ja', '?????????????????????????????????' UNION ALL
SELECT core.get_menu_id('COA'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('CTST'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('CUOM'), 'ja', '??????????????????????????????' UNION ALL
SELECT core.get_menu_id('CUR'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('DRP'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('DRS'), 'ja', '??????' UNION ALL
SELECT core.get_menu_id('EOD'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('FI'), 'ja', '??????' UNION ALL
SELECT core.get_menu_id('FIR'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('FSM'), 'ja', '???????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('FTT'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('FVV'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('GRN'), 'ja', 'GRN???????????????' UNION ALL
SELECT core.get_menu_id('IAS'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('ICP'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('IIM'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('IR'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('ISM'), 'ja', '???????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('ISP'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('ITM'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('JVN'), 'ja', '?????????????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('LF'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('OTS'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('OTSI'), 'ja', '????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('PA'), 'ja', '?????????????????????????????????' UNION ALL
SELECT core.get_menu_id('PAT'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('PLA'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('PO'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('PR'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('PRO'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('PSA'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('PT'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('PU'), 'ja', '??????' UNION ALL
SELECT core.get_menu_id('PUQ'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('PUR'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('PWD'), 'ja', '????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('RFC'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('RI'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('RIS'), 'ja', '????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SA'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SAP'), 'ja', 'GL????????????????????????' UNION ALL
SELECT core.get_menu_id('SAQ'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('SAR'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SAT'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('SAV'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('SCR'), 'ja', '??????????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SCRS'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('SCS'), 'ja', '????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SCTS'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('SD'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SDS'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SEAR'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('SES'), 'ja', '???????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SFR'), 'ja', '?????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SFY'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SHI'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('SIG'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SIS'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SMA'), 'ja', '????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SMP'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SO'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SOB'), 'ja', '???????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SOS'), 'ja', 'Office??????????????????' UNION ALL
SELECT core.get_menu_id('SPM'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SQ'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SR'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SRM'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('SSA'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('SSB'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('SSC'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('SSCD'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('SSI'), 'ja', '?????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SSM'), 'ja', '???????????????????????????????????????' UNION ALL
SELECT core.get_menu_id('SSP'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('SSS'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SST'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('STA'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('STJ'), 'ja', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('STO'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('STST'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('STT'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('STX'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('STXD'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('STXEX'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'ja', '?????????????????????' UNION ALL
SELECT core.get_menu_id('STXT'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('SUM'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('SVV'), 'ja', '??????????????????????????????' UNION ALL
SELECT core.get_menu_id('TB'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('TRF'), 'ja', '?????????' UNION ALL
SELECT core.get_menu_id('TXA'), 'ja', '????????????' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'ja', '??????????????????' UNION ALL
SELECT core.get_menu_id('TXM'), 'ja', '???????????????' UNION ALL
SELECT core.get_menu_id('UER'), 'ja', '????????????????????????' UNION ALL
SELECT core.get_menu_id('UOM'), 'ja', '???????????????';


--SPANISH

INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'es', 'Losa bonificaci??n sobre los Vendedores' UNION ALL
SELECT core.get_menu_id('AGS'), 'es', 'Losas Envejecimiento' UNION ALL
SELECT core.get_menu_id('AS'), 'es', 'Estado de Cuenta' UNION ALL
SELECT core.get_menu_id('BAK'), 'es', 'Base de datos de copia de seguridad' UNION ALL
SELECT core.get_menu_id('BO'), 'es', 'Back Office' UNION ALL
SELECT core.get_menu_id('BOTC'), 'es', 'Configuraci??n de Impuestos' UNION ALL
SELECT core.get_menu_id('BS'), 'es', 'el balance' UNION ALL
SELECT core.get_menu_id('BSA'), 'es', 'Bono Slab Asignaci??n' UNION ALL
SELECT core.get_menu_id('BSD'), 'es', 'Bono Slab Detalles' UNION ALL
SELECT core.get_menu_id('CBA'), 'es', 'Cuentas bancarias' UNION ALL
SELECT core.get_menu_id('CC'), 'es', 'Centros de costes' UNION ALL
SELECT core.get_menu_id('CF'), 'es', 'Flujo De Fondos' UNION ALL
SELECT core.get_menu_id('CFH'), 'es', 'Cash Flow encabezamientos' UNION ALL
SELECT core.get_menu_id('COA'), 'es', 'Plan General de Contabilidad' UNION ALL
SELECT core.get_menu_id('CTST'), 'es', 'Impuestos Condados de venta' UNION ALL
SELECT core.get_menu_id('CUOM'), 'es', 'Unidades compuestas de Medida' UNION ALL
SELECT core.get_menu_id('CUR'), 'es', 'Gesti??n de moneda' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'es', 'Base de Estad??sticas' UNION ALL
SELECT core.get_menu_id('DRP'), 'es', 'Compra Directa' UNION ALL
SELECT core.get_menu_id('DRS'), 'es', 'Venta Directa' UNION ALL
SELECT core.get_menu_id('EOD'), 'es', 'Al final del d??a de operaci??n' UNION ALL
SELECT core.get_menu_id('FI'), 'es', 'Finanzas' UNION ALL
SELECT core.get_menu_id('FIR'), 'es', 'Informes' UNION ALL
SELECT core.get_menu_id('FSM'), 'es', 'Creaci??n y Mantenimiento' UNION ALL
SELECT core.get_menu_id('FTT'), 'es', 'Transacciones y plantillas' UNION ALL
SELECT core.get_menu_id('FVV'), 'es', 'Verificaci??n Voucher' UNION ALL
SELECT core.get_menu_id('GRN'), 'es', 'Productos de Entrada Nota Recibido' UNION ALL
SELECT core.get_menu_id('IAS'), 'es', 'Estado de Cuenta de Inventario' UNION ALL
SELECT core.get_menu_id('ICP'), 'es', 'Los precios de coste' UNION ALL
SELECT core.get_menu_id('IIM'), 'es', 'Movimientos de Inventario' UNION ALL
SELECT core.get_menu_id('IR'), 'es', 'Informes' UNION ALL
SELECT core.get_menu_id('ISM'), 'es', 'Creaci??n y Mantenimiento' UNION ALL
SELECT core.get_menu_id('ISP'), 'es', 'los precios de venta' UNION ALL
SELECT core.get_menu_id('ITM'), 'es', 'Productos y Art??culos' UNION ALL
SELECT core.get_menu_id('JVN'), 'es', 'Entrada Comprobante de Diario' UNION ALL
SELECT core.get_menu_id('LF'), 'es', 'Recargos' UNION ALL
SELECT core.get_menu_id('OTS'), 'es', 'Una configuraci??n de la hora' UNION ALL
SELECT core.get_menu_id('OTSI'), 'es', 'Inventario de apertura' UNION ALL
SELECT core.get_menu_id('PA'), 'es', 'Cuentas del Partido' UNION ALL
SELECT core.get_menu_id('PAT'), 'es', 'Condiciones de pago' UNION ALL
SELECT core.get_menu_id('PLA'), 'es', 'Winst- en verliesrekening...' UNION ALL
SELECT core.get_menu_id('PO'), 'es', 'Orden De Compra' UNION ALL
SELECT core.get_menu_id('PR'), 'es', 'Compra de Retorno' UNION ALL
SELECT core.get_menu_id('PRO'), 'es', 'Compra de reorden' UNION ALL
SELECT core.get_menu_id('PSA'), 'es', 'Direcciones de Env??o' UNION ALL
SELECT core.get_menu_id('PT'), 'es', 'Tipos Party' UNION ALL
SELECT core.get_menu_id('PU'), 'es', 'Compra' UNION ALL
SELECT core.get_menu_id('PUQ'), 'es', 'Compra y Cotizaci??n' UNION ALL
SELECT core.get_menu_id('PUR'), 'es', 'Informes de Compra' UNION ALL
SELECT core.get_menu_id('PWD'), 'es', 'Cambiar contrase??a de usuario' UNION ALL
SELECT core.get_menu_id('RFC'), 'es', 'Recibo del Cliente' UNION ALL
SELECT core.get_menu_id('RI'), 'es', 'facturas recurrentes' UNION ALL
SELECT core.get_menu_id('RIS'), 'es', 'Configuraci??n Factura Recurrente' UNION ALL
SELECT core.get_menu_id('SA'), 'es', 'venta' UNION ALL
SELECT core.get_menu_id('SAP'), 'es', 'Pol??tica de Acceso General Ledger' UNION ALL
SELECT core.get_menu_id('SAQ'), 'es', 'Ventas y Cotizaci??n' UNION ALL
SELECT core.get_menu_id('SAR'), 'es', 'Informes de ventas' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'es', 'Top art??culos m??s vendidos' UNION ALL
SELECT core.get_menu_id('SAT'), 'es', 'Herramientas de administraci??n' UNION ALL
SELECT core.get_menu_id('SAV'), 'es', 'Pol??tica Autom??tico de Verificaci??n' UNION ALL
SELECT core.get_menu_id('SCR'), 'es', 'Configuraci??n del dep??sito de efectivo' UNION ALL
SELECT core.get_menu_id('SCRS'), 'es', 'Configuraci??n de pa??s' UNION ALL
SELECT core.get_menu_id('SCS'), 'es', 'Configuraci??n Contador' UNION ALL
SELECT core.get_menu_id('SCTS'), 'es', 'Configuraci??n del Condado' UNION ALL
SELECT core.get_menu_id('SD'), 'es', 'Entrega Ventas' UNION ALL
SELECT core.get_menu_id('SDS'), 'es', 'afdeling Setup' UNION ALL
SELECT core.get_menu_id('SEAR'), 'es', 'Informes de Auditor??a' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'es', 'Entrar Ver' UNION ALL
SELECT core.get_menu_id('SES'), 'es', 'Configuraci??n entidad' UNION ALL
SELECT core.get_menu_id('SFR'), 'es', 'Gesti??n de Frecuencias y el a??o fiscal' UNION ALL
SELECT core.get_menu_id('SFY'), 'es', 'Informaci??n Fiscal A??o' UNION ALL
SELECT core.get_menu_id('SHI'), 'es', 'Informaci??n Shipper' UNION ALL
SELECT core.get_menu_id('SIG'), 'es', 'los grupos de art??culos' UNION ALL
SELECT core.get_menu_id('SIS'), 'es', 'Configuraci??n de la Industria' UNION ALL
SELECT core.get_menu_id('SMA'), 'es', 'Men?? pol??tica de acceso' UNION ALL
SELECT core.get_menu_id('SMP'), 'es', 'Par??metros Varios' UNION ALL
SELECT core.get_menu_id('SO'), 'es', 'Orden de Venta' UNION ALL
SELECT core.get_menu_id('SOB'), 'es', 'Instalaci??n de Office y Poder' UNION ALL
SELECT core.get_menu_id('SOS'), 'es', 'instalaci??n de Office' UNION ALL
SELECT core.get_menu_id('SPM'), 'es', 'Gesti??n de Pol??ticas' UNION ALL
SELECT core.get_menu_id('SQ'), 'es', 'Cita Ventas' UNION ALL
SELECT core.get_menu_id('SR'), 'es', 'Volver Ventas' UNION ALL
SELECT core.get_menu_id('SRM'), 'es', 'Administraci??n de funciones' UNION ALL
SELECT core.get_menu_id('SSA'), 'es', 'vendedores' UNION ALL
SELECT core.get_menu_id('SSB'), 'es', 'Marcas' UNION ALL
SELECT core.get_menu_id('SSC'), 'es', 'compuesto Art??culos' UNION ALL
SELECT core.get_menu_id('SSCD'), 'es', 'Compuesto Detalles del art??culo' UNION ALL
SELECT core.get_menu_id('SSI'), 'es', 'Mantenimiento de art??culos' UNION ALL
SELECT core.get_menu_id('SSM'), 'es', 'Creaci??n y Mantenimiento' UNION ALL
SELECT core.get_menu_id('SSP'), 'es', 'pol??tica de la tienda' UNION ALL
SELECT core.get_menu_id('SSS'), 'es', 'Configuraci??n Estado' UNION ALL
SELECT core.get_menu_id('SST'), 'es', 'equipo de ventas' UNION ALL
SELECT core.get_menu_id('STA'), 'es', 'Ajustes de archivo' UNION ALL
SELECT core.get_menu_id('STJ'), 'es', 'Diario Stock Transfer' UNION ALL
SELECT core.get_menu_id('STO'), 'es', 'Tiendas' UNION ALL
SELECT core.get_menu_id('STST'), 'es', 'Impuestos estatales' UNION ALL
SELECT core.get_menu_id('STT'), 'es', 'Tipo de tienda' UNION ALL
SELECT core.get_menu_id('STX'), 'es', 'impuestos a las Ventas' UNION ALL
SELECT core.get_menu_id('STXD'), 'es', 'Detalles de impuesto sobre las ventas' UNION ALL
SELECT core.get_menu_id('STXEX'), 'es', 'Exime de impuestos de ventas' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'es', 'SalesTax Detalles Exentos' UNION ALL
SELECT core.get_menu_id('STXT'), 'es', 'Tipos de Impuestos de Ventas' UNION ALL
SELECT core.get_menu_id('SUM'), 'es', 'Gesti??n de usuarios' UNION ALL
SELECT core.get_menu_id('SVV'), 'es', 'Vale Pol??tica de Verificaci??n' UNION ALL
SELECT core.get_menu_id('TB'), 'es', 'balance' UNION ALL
SELECT core.get_menu_id('TRF'), 'es', 'Banderas' UNION ALL
SELECT core.get_menu_id('TXA'), 'es', 'Agencia Tributaria' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'es', 'Impuestos Tipos Exentos' UNION ALL
SELECT core.get_menu_id('TXM'), 'es', 'Maestro de Impuestos' UNION ALL
SELECT core.get_menu_id('UER'), 'es', 'Actualizaci??n Cotizaciones' UNION ALL
SELECT core.get_menu_id('UOM'), 'es', 'Unidades de Medida';

--DUTCH
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'nl', 'Bonus Slab voor Verkopers' UNION ALL
SELECT core.get_menu_id('AGS'), 'nl', 'Vergrijzing Platen' UNION ALL
SELECT core.get_menu_id('AS'), 'nl', 'rekeningafschrift' UNION ALL
SELECT core.get_menu_id('BAK'), 'nl', 'backup Database' UNION ALL
SELECT core.get_menu_id('BO'), 'nl', 'Back Office' UNION ALL
SELECT core.get_menu_id('BOTC'), 'nl', 'belasting Configuratie' UNION ALL
SELECT core.get_menu_id('BS'), 'nl', 'balans' UNION ALL
SELECT core.get_menu_id('BSA'), 'nl', 'Bonus Slab Opdracht' UNION ALL
SELECT core.get_menu_id('BSD'), 'nl', 'Bonus Slab Details' UNION ALL
SELECT core.get_menu_id('CBA'), 'nl', 'bankrekeningen' UNION ALL
SELECT core.get_menu_id('CC'), 'nl', 'Kostenplaatsen' UNION ALL
SELECT core.get_menu_id('CF'), 'nl', 'Geldstroom' UNION ALL
SELECT core.get_menu_id('CFH'), 'nl', 'Cash Flow Koppen' UNION ALL
SELECT core.get_menu_id('COA'), 'nl', 'Rekeningschema' UNION ALL
SELECT core.get_menu_id('CTST'), 'nl', 'Provincies Sales Belastingen' UNION ALL
SELECT core.get_menu_id('CUOM'), 'nl', 'Verbinding meeteenheden' UNION ALL
SELECT core.get_menu_id('CUR'), 'nl', 'valuta management' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'nl', 'Database statistieken' UNION ALL
SELECT core.get_menu_id('DRP'), 'nl', 'direct Aankoop' UNION ALL
SELECT core.get_menu_id('DRS'), 'nl', 'Direct Sales' UNION ALL
SELECT core.get_menu_id('EOD'), 'nl', 'Einde van de dag Operatie' UNION ALL
SELECT core.get_menu_id('FI'), 'nl', 'Financi??n' UNION ALL
SELECT core.get_menu_id('FIR'), 'nl', 'rapporten' UNION ALL
SELECT core.get_menu_id('FSM'), 'nl', 'Installatie & Onderhoud' UNION ALL
SELECT core.get_menu_id('FTT'), 'nl', 'Transactions & Templates' UNION ALL
SELECT core.get_menu_id('FVV'), 'nl', 'voucher Verificatie' UNION ALL
SELECT core.get_menu_id('GRN'), 'nl', 'Goederen Ontvangen Opmerking Entry' UNION ALL
SELECT core.get_menu_id('IAS'), 'nl', 'Inventaris rekeningafschrift' UNION ALL
SELECT core.get_menu_id('ICP'), 'nl', 'kostprijzen' UNION ALL
SELECT core.get_menu_id('IIM'), 'nl', 'inventaris Movements' UNION ALL
SELECT core.get_menu_id('IR'), 'nl', 'rapporten' UNION ALL
SELECT core.get_menu_id('ISM'), 'nl', 'Installatie & Onderhoud' UNION ALL
SELECT core.get_menu_id('ISP'), 'nl', 'verkoopprijs' UNION ALL
SELECT core.get_menu_id('ITM'), 'nl', 'Producten en Artikelen' UNION ALL
SELECT core.get_menu_id('JVN'), 'nl', 'Journal Voucher Entry' UNION ALL
SELECT core.get_menu_id('LF'), 'nl', 'late Vergoedingen' UNION ALL
SELECT core.get_menu_id('OTS'), 'nl', 'One Time Setup' UNION ALL
SELECT core.get_menu_id('OTSI'), 'nl', 'Het openen van Inventory' UNION ALL
SELECT core.get_menu_id('PA'), 'nl', 'partij Accounts' UNION ALL
SELECT core.get_menu_id('PAT'), 'nl', 'Betaalvoorwaarden' UNION ALL
SELECT core.get_menu_id('PLA'), 'nl', 'Winst- en verliesrekening' UNION ALL
SELECT core.get_menu_id('PO'), 'nl', 'direct Aankoop' UNION ALL
SELECT core.get_menu_id('PR'), 'nl', 'aankoop Return' UNION ALL
SELECT core.get_menu_id('PRO'), 'nl', 'aankoop opnieuw ordenen' UNION ALL
SELECT core.get_menu_id('PSA'), 'nl', 'afleveradres' UNION ALL
SELECT core.get_menu_id('PT'), 'nl', 'partij Types' UNION ALL
SELECT core.get_menu_id('PU'), 'nl', 'aankoop' UNION ALL
SELECT core.get_menu_id('PUQ'), 'nl', 'Inkoop & Offerte' UNION ALL
SELECT core.get_menu_id('PUR'), 'nl', 'aankoop Rapporten' UNION ALL
SELECT core.get_menu_id('PWD'), 'nl', 'Change User Password' UNION ALL
SELECT core.get_menu_id('RFC'), 'nl', 'Ontvangst van de klant' UNION ALL
SELECT core.get_menu_id('RI'), 'nl', 'terugkerende facturen' UNION ALL
SELECT core.get_menu_id('RIS'), 'nl', 'Terugkerende Invoice Setup' UNION ALL
SELECT core.get_menu_id('SA'), 'nl', 'Sales' UNION ALL
SELECT core.get_menu_id('SAP'), 'nl', 'GL Access Policy' UNION ALL
SELECT core.get_menu_id('SAQ'), 'nl', 'Sales & Quotation' UNION ALL
SELECT core.get_menu_id('SAR'), 'nl', 'Sales Reports' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'nl', 'Top Selling Items' UNION ALL
SELECT core.get_menu_id('SAT'), 'nl', 'Admin Tools' UNION ALL
SELECT core.get_menu_id('SAV'), 'nl', 'Automatisch Verificatie Beleid' UNION ALL
SELECT core.get_menu_id('SCR'), 'nl', 'Cash Repository Setup' UNION ALL
SELECT core.get_menu_id('SCRS'), 'nl', 'land Setup' UNION ALL
SELECT core.get_menu_id('SCS'), 'nl', 'Counter Setup' UNION ALL
SELECT core.get_menu_id('SCTS'), 'nl', 'County Setup' UNION ALL
SELECT core.get_menu_id('SD'), 'nl', 'Sales Delivery' UNION ALL
SELECT core.get_menu_id('SDS'), 'nl', 'afdeling Setup' UNION ALL
SELECT core.get_menu_id('SEAR'), 'nl', 'auditrapporten' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'nl', 'Inloggen View' UNION ALL
SELECT core.get_menu_id('SES'), 'nl', 'entiteit Setup' UNION ALL
SELECT core.get_menu_id('SFR'), 'nl', 'Frequentie & boekjaar management' UNION ALL
SELECT core.get_menu_id('SFY'), 'nl', 'Fiscale Jaar Informatie' UNION ALL
SELECT core.get_menu_id('SHI'), 'nl', 'verlader Informatie' UNION ALL
SELECT core.get_menu_id('SIG'), 'nl', 'Item Groepen' UNION ALL
SELECT core.get_menu_id('SIS'), 'nl', 'industrie Setup' UNION ALL
SELECT core.get_menu_id('SMA'), 'nl', 'Menu Access Policy' UNION ALL
SELECT core.get_menu_id('SMP'), 'nl', 'Diverse parameters' UNION ALL
SELECT core.get_menu_id('SO'), 'nl', 'Sales Order' UNION ALL
SELECT core.get_menu_id('SOB'), 'nl', 'Office & Branch Setup' UNION ALL
SELECT core.get_menu_id('SOS'), 'nl', 'Office Setup' UNION ALL
SELECT core.get_menu_id('SPM'), 'nl', 'Policy Management' UNION ALL
SELECT core.get_menu_id('SQ'), 'nl', 'Sales Offerte' UNION ALL
SELECT core.get_menu_id('SR'), 'nl', 'Sales Return' UNION ALL
SELECT core.get_menu_id('SRM'), 'nl', 'rol management' UNION ALL
SELECT core.get_menu_id('SSA'), 'nl', 'verkopers' UNION ALL
SELECT core.get_menu_id('SSB'), 'nl', 'merk' UNION ALL
SELECT core.get_menu_id('SSC'), 'nl', 'verbinding items' UNION ALL
SELECT core.get_menu_id('SSCD'), 'nl', 'Verbinding Item Details' UNION ALL
SELECT core.get_menu_id('SSI'), 'nl', 'Item Onderhoud' UNION ALL
SELECT core.get_menu_id('SSM'), 'nl', 'Installatie & Onderhoud' UNION ALL
SELECT core.get_menu_id('SSP'), 'nl', 'Store-beleid' UNION ALL
SELECT core.get_menu_id('SSS'), 'nl', 'Staat Setup' UNION ALL
SELECT core.get_menu_id('SST'), 'nl', 'Sales Teams' UNION ALL
SELECT core.get_menu_id('STA'), 'nl', 'Stock Aanpassingen' UNION ALL
SELECT core.get_menu_id('STJ'), 'nl', 'Stock Transfer Journal' UNION ALL
SELECT core.get_menu_id('STO'), 'nl', 'winkel' UNION ALL
SELECT core.get_menu_id('STST'), 'nl', 'Staat Sales Belastingen' UNION ALL
SELECT core.get_menu_id('STT'), 'nl', 'Store Type' UNION ALL
SELECT core.get_menu_id('STX'), 'nl', 'verkoop Belastingen' UNION ALL
SELECT core.get_menu_id('STXD'), 'nl', 'verkoop Belastingen Detail' UNION ALL
SELECT core.get_menu_id('STXEX'), 'nl', 'Verkoop Tax vrijstelt' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'nl', 'Verkoop vrijgesteld van belasting Details' UNION ALL
SELECT core.get_menu_id('STXT'), 'nl', 'Verkoop Belasting Types' UNION ALL
SELECT core.get_menu_id('SUM'), 'nl', 'user Management' UNION ALL
SELECT core.get_menu_id('SVV'), 'nl', 'Voucher Verificatie Beleid' UNION ALL
SELECT core.get_menu_id('TB'), 'nl', 'Trial Balance' UNION ALL
SELECT core.get_menu_id('TRF'), 'nl', 'vlaggen' UNION ALL
SELECT core.get_menu_id('TXA'), 'nl', 'Belastingdienst' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'nl', 'Vrijgesteld van belasting Types' UNION ALL
SELECT core.get_menu_id('TXM'), 'nl', 'belasting Master' UNION ALL
SELECT core.get_menu_id('UER'), 'nl', 'Bijwerken Wisselkoersen' UNION ALL
SELECT core.get_menu_id('UOM'), 'nl', 'Maateenheden';

--SIMPLIFIED CHINESE
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'zh', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('AGS'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('AS'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('BAK'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('BO'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('BOTC'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('BS'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('BSA'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('BSD'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('CBA'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('CC'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('CF'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('CFH'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('COA'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('CTST'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('CUOM'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('CUR'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('DRP'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('DRS'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('EOD'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('FI'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('FIR'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('FSM'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('FTT'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('FVV'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('GRN'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('IAS'), 'zh', '?????????????????????' UNION ALL
SELECT core.get_menu_id('ICP'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('IIM'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('IR'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('ISM'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('ISP'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('ITM'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('JVN'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('LF'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('OTS'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('OTSI'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PA'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PAT'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PLA'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('PO'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PR'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PRO'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('PSA'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PT'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PU'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('PUQ'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('PUR'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('PWD'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('RFC'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('RI'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('RIS'), 'zh', '?????????????????????' UNION ALL
SELECT core.get_menu_id('SA'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('SAP'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('SAQ'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SAR'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('SAT'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SAV'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('SCR'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('SCRS'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SCS'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('SCTS'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('SD'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('SDS'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SEAR'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SES'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SFR'), 'zh', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SFY'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SHI'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('SIG'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('SIS'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SMA'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('SMP'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SO'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SOB'), 'zh', '???????????????????????????' UNION ALL
SELECT core.get_menu_id('SOS'), 'zh', '????????? ??????' UNION ALL
SELECT core.get_menu_id('SPM'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SQ'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SR'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SRM'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SSA'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('SSB'), 'zh', '??????' UNION ALL
SELECT core.get_menu_id('SSC'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SSCD'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('SSI'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SSM'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('SSP'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SSS'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SST'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('STA'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('STJ'), 'zh', '??????????????????' UNION ALL
SELECT core.get_menu_id('STO'), 'zh', '???' UNION ALL
SELECT core.get_menu_id('STST'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('STT'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('STX'), 'zh', '?????????' UNION ALL
SELECT core.get_menu_id('STXD'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('STXEX'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'zh', '?????????????????????' UNION ALL
SELECT core.get_menu_id('STXT'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('SUM'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('SVV'), 'zh', '???????????????' UNION ALL
SELECT core.get_menu_id('TB'), 'zh', 'Trial Balance' UNION ALL
SELECT core.get_menu_id('TRF'), 'zh', '???' UNION ALL
SELECT core.get_menu_id('TXA'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('TXM'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('UER'), 'zh', '????????????' UNION ALL
SELECT core.get_menu_id('UOM'), 'zh', '????????????';

--PORTUGUESE

INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'pt', 'Slab Bonus para vendedores' UNION ALL
SELECT core.get_menu_id('AGS'), 'pt', 'Lajes Envelhecimento' UNION ALL
SELECT core.get_menu_id('AS'), 'pt', 'Extrato de Conta' UNION ALL
SELECT core.get_menu_id('BAK'), 'pt', 'backup Database' UNION ALL
SELECT core.get_menu_id('BO'), 'pt', 'Back Office' UNION ALL
SELECT core.get_menu_id('BOTC'), 'pt', 'Configura????o do Imposto' UNION ALL
SELECT core.get_menu_id('BS'), 'pt', 'Balan??o' UNION ALL
SELECT core.get_menu_id('BSA'), 'pt', 'Bonus Slab Assignment' UNION ALL
SELECT core.get_menu_id('BSD'), 'pt', 'Bonus Slab Detalhes' UNION ALL
SELECT core.get_menu_id('CBA'), 'pt', 'Contas Banc??rias' UNION ALL
SELECT core.get_menu_id('CC'), 'pt', 'Centros de custo' UNION ALL
SELECT core.get_menu_id('CF'), 'pt', 'Fluxo De Caixa' UNION ALL
SELECT core.get_menu_id('CFH'), 'pt', 'Fluxo de Caixa Headings' UNION ALL
SELECT core.get_menu_id('COA'), 'pt', 'Plano de Contas' UNION ALL
SELECT core.get_menu_id('CTST'), 'pt', 'Impostos Concelhos de vendas' UNION ALL
SELECT core.get_menu_id('CUOM'), 'pt', 'Units compostas de medida' UNION ALL
SELECT core.get_menu_id('CUR'), 'pt', 'Gest??o de moeda' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'pt', 'Estat??sticas do Banco de Dados' UNION ALL
SELECT core.get_menu_id('DRP'), 'pt', 'Compra Direta' UNION ALL
SELECT core.get_menu_id('DRS'), 'pt', 'Vendas Diretas' UNION ALL
SELECT core.get_menu_id('EOD'), 'pt', 'Fim da Opera????o Dia' UNION ALL
SELECT core.get_menu_id('FI'), 'pt', 'finan??as' UNION ALL
SELECT core.get_menu_id('FIR'), 'pt', 'relat??rios' UNION ALL
SELECT core.get_menu_id('FSM'), 'pt', 'Configura????o e Manuten????o' UNION ALL
SELECT core.get_menu_id('FTT'), 'pt', 'Transactions & Templates' UNION ALL
SELECT core.get_menu_id('FVV'), 'pt', 'Verifica????o de Vouchers' UNION ALL
SELECT core.get_menu_id('GRN'), 'pt', 'Mercadorias entrada de nota recebida' UNION ALL
SELECT core.get_menu_id('IAS'), 'pt', 'Extrato da conta de estoques' UNION ALL
SELECT core.get_menu_id('ICP'), 'pt', 'pre??os de custo' UNION ALL
SELECT core.get_menu_id('IIM'), 'pt', 'Movimentos de invent??rio' UNION ALL
SELECT core.get_menu_id('IR'), 'pt', 'relat??rios' UNION ALL
SELECT core.get_menu_id('ISM'), 'pt', 'Configura????o e Manuten????o' UNION ALL
SELECT core.get_menu_id('ISP'), 'pt', 'Os pre??os de venda' UNION ALL
SELECT core.get_menu_id('ITM'), 'pt', 'Produtos e Itens' UNION ALL
SELECT core.get_menu_id('JVN'), 'pt', 'Jornal Vale Entry' UNION ALL
SELECT core.get_menu_id('LF'), 'pt', 'taxas atrasadas' UNION ALL
SELECT core.get_menu_id('OTS'), 'pt', 'One Time Setup' UNION ALL
SELECT core.get_menu_id('OTSI'), 'pt', 'Invent??rio de abertura' UNION ALL
SELECT core.get_menu_id('PA'), 'pt', 'Contas do partido' UNION ALL
SELECT core.get_menu_id('PAT'), 'pt', 'Condi????es de pagamento' UNION ALL
SELECT core.get_menu_id('PLA'), 'pt', 'Demonstra????o de Resultados' UNION ALL
SELECT core.get_menu_id('PO'), 'pt', 'Ordem De Compra' UNION ALL
SELECT core.get_menu_id('PR'), 'pt', 'compra Retorno' UNION ALL
SELECT core.get_menu_id('PRO'), 'pt', 'compra Reordenar' UNION ALL
SELECT core.get_menu_id('PSA'), 'pt', 'Endere??os para envio' UNION ALL
SELECT core.get_menu_id('PT'), 'pt', 'Tipos partido' UNION ALL
SELECT core.get_menu_id('PU'), 'pt', 'compra' UNION ALL
SELECT core.get_menu_id('PUQ'), 'pt', 'Compra & Cota????o' UNION ALL
SELECT core.get_menu_id('PUR'), 'pt', 'Relat??rios de compra' UNION ALL
SELECT core.get_menu_id('PWD'), 'pt', 'Alterar senha do usu??rio' UNION ALL
SELECT core.get_menu_id('RFC'), 'pt', 'Recibo do Cliente' UNION ALL
SELECT core.get_menu_id('RI'), 'pt', 'facturas recorrentes' UNION ALL
SELECT core.get_menu_id('RIS'), 'pt', 'Setup Invoice Recorrente' UNION ALL
SELECT core.get_menu_id('SA'), 'pt', 'de vendas' UNION ALL
SELECT core.get_menu_id('SAP'), 'pt', 'GL Pol??tica de Acesso' UNION ALL
SELECT core.get_menu_id('SAQ'), 'pt', 'Vendas e cota????o' UNION ALL
SELECT core.get_menu_id('SAR'), 'pt', 'Relat??rios de vendas' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'pt', 'Itens mais vendidos' UNION ALL
SELECT core.get_menu_id('SAT'), 'pt', 'Ferramentas de Administra????o' UNION ALL
SELECT core.get_menu_id('SAV'), 'pt', 'Pol??tica de verifica????o autom??tica' UNION ALL
SELECT core.get_menu_id('SCR'), 'pt', 'Setup Dinheiro Repository' UNION ALL
SELECT core.get_menu_id('SCRS'), 'pt', 'Setup pa??s' UNION ALL
SELECT core.get_menu_id('SCS'), 'pt', 'Setup contador' UNION ALL
SELECT core.get_menu_id('SCTS'), 'pt', 'Setup County' UNION ALL
SELECT core.get_menu_id('SD'), 'pt', 'Entrega de Vendas' UNION ALL
SELECT core.get_menu_id('SDS'), 'pt', 'Setup Departamento' UNION ALL
SELECT core.get_menu_id('SEAR'), 'pt', 'Relat??rios de Auditoria' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'pt', 'Entrada Vista' UNION ALL
SELECT core.get_menu_id('SES'), 'pt', 'Setup Entity' UNION ALL
SELECT core.get_menu_id('SFR'), 'pt', 'Gest??o de frequ??ncia e de Ano Fiscal' UNION ALL
SELECT core.get_menu_id('SFY'), 'pt', 'Fiscal Informa????es Ano' UNION ALL
SELECT core.get_menu_id('SHI'), 'pt', 'Informa????es shipper' UNION ALL
SELECT core.get_menu_id('SIG'), 'pt', 'Grupos de itens' UNION ALL
SELECT core.get_menu_id('SIS'), 'pt', 'Setup ind??stria' UNION ALL
SELECT core.get_menu_id('SMA'), 'pt', 'Pol??tica de acesso ao menu' UNION ALL
SELECT core.get_menu_id('SMP'), 'pt', 'Par??metros Diversos' UNION ALL
SELECT core.get_menu_id('SO'), 'pt', 'pedido de Vendas' UNION ALL
SELECT core.get_menu_id('SOB'), 'pt', 'Escrit??rio & Filial Setup' UNION ALL
SELECT core.get_menu_id('SOS'), 'pt', 'Instala????o do Office' UNION ALL
SELECT core.get_menu_id('SPM'), 'pt', 'Gest??o de Pol??ticas' UNION ALL
SELECT core.get_menu_id('SQ'), 'pt', 'cota????o de vendas' UNION ALL
SELECT core.get_menu_id('SR'), 'pt', 'Retorno de Vendas' UNION ALL
SELECT core.get_menu_id('SRM'), 'pt', 'Gerenciamento de fun????es' UNION ALL
SELECT core.get_menu_id('SSA'), 'pt', 'vendedores' UNION ALL
SELECT core.get_menu_id('SSB'), 'pt', 'marcas' UNION ALL
SELECT core.get_menu_id('SSC'), 'pt', 'Itens Composto' UNION ALL
SELECT core.get_menu_id('SSCD'), 'pt', 'Detalhes Composto item' UNION ALL
SELECT core.get_menu_id('SSI'), 'pt', 'item de manuten????o' UNION ALL
SELECT core.get_menu_id('SSM'), 'pt', 'Configura????o e Manuten????o' UNION ALL
SELECT core.get_menu_id('SSP'), 'pt', 'Pol??tica da loja' UNION ALL
SELECT core.get_menu_id('SSS'), 'pt', 'Setup Estado' UNION ALL
SELECT core.get_menu_id('SST'), 'pt', 'equipes de Vendas' UNION ALL
SELECT core.get_menu_id('STA'), 'pt', 'ajuste de estoques' UNION ALL
SELECT core.get_menu_id('STJ'), 'pt', 'Jornal da Transfer??ncia' UNION ALL
SELECT core.get_menu_id('STO'), 'pt', 'Stores' UNION ALL
SELECT core.get_menu_id('STST'), 'pt', 'Impostos estaduais sobre vendas' UNION ALL
SELECT core.get_menu_id('STT'), 'pt', 'tipos de armazenamento' UNION ALL
SELECT core.get_menu_id('STX'), 'pt', 'Impostos sobre Vendas' UNION ALL
SELECT core.get_menu_id('STXD'), 'pt', 'Detalhes de imposto sobre vendas' UNION ALL
SELECT core.get_menu_id('STXEX'), 'pt', 'Isenta de imposto sobre vendas' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'pt', 'Imposto sobre vendas Detalhes Isentos' UNION ALL
SELECT core.get_menu_id('STXT'), 'pt', 'Tipos de imposto sobre vendas' UNION ALL
SELECT core.get_menu_id('SUM'), 'pt', 'Gerenciamento de usu??rios' UNION ALL
SELECT core.get_menu_id('SVV'), 'pt', 'Comprovante Pol??tica de Verifica????o' UNION ALL
SELECT core.get_menu_id('TB'), 'pt', 'Balancete' UNION ALL
SELECT core.get_menu_id('TRF'), 'pt', 'bandeiras' UNION ALL
SELECT core.get_menu_id('TXA'), 'pt', 'Fisco' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'pt', 'Fiscais Tipos Isentos' UNION ALL
SELECT core.get_menu_id('TXM'), 'pt', 'Mestre Tax' UNION ALL
SELECT core.get_menu_id('UER'), 'pt', 'Atualiza????o de Taxas de C??mbio' UNION ALL
SELECT core.get_menu_id('UOM'), 'pt', 'Unidades de Medida';

--SWEDISH

INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'sv', 'Bonus Slab f??r F??rs??ljare' UNION ALL
SELECT core.get_menu_id('AGS'), 'sv', '??ldrande Plattor' UNION ALL
SELECT core.get_menu_id('AS'), 'sv', 'Kontoutdrag' UNION ALL
SELECT core.get_menu_id('BAK'), 'sv', 'backup Database' UNION ALL
SELECT core.get_menu_id('BO'), 'sv', 'Tillbaka Office' UNION ALL
SELECT core.get_menu_id('BOTC'), 'sv', 'Skatte Konfiguration' UNION ALL
SELECT core.get_menu_id('BS'), 'sv', 'bALANSR??KNING' UNION ALL
SELECT core.get_menu_id('BSA'), 'sv', 'Bonus Slab Assignment' UNION ALL
SELECT core.get_menu_id('BSD'), 'sv', 'Bonus Slab Detaljer' UNION ALL
SELECT core.get_menu_id('CBA'), 'sv', 'Bankkonton' UNION ALL
SELECT core.get_menu_id('CC'), 'sv', 'Kostnadsst??llen' UNION ALL
SELECT core.get_menu_id('CF'), 'sv', 'Cash Flow' UNION ALL
SELECT core.get_menu_id('CFH'), 'sv', 'Cash Flow Rubriker' UNION ALL
SELECT core.get_menu_id('COA'), 'sv', 'Kontoplan' UNION ALL
SELECT core.get_menu_id('CTST'), 'sv', 'L??n F??rs??ljnings Skatter' UNION ALL
SELECT core.get_menu_id('CUOM'), 'sv', 'Sammansatta m??ttenheter' UNION ALL
SELECT core.get_menu_id('CUR'), 'sv', 'Valutahantering' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'sv', 'databas Statistik' UNION ALL
SELECT core.get_menu_id('DRP'), 'sv', 'Direkt Ink??p' UNION ALL
SELECT core.get_menu_id('DRS'), 'sv', 'direktf??rs??ljning' UNION ALL
SELECT core.get_menu_id('EOD'), 'sv', 'Slut p?? Dag Operation' UNION ALL
SELECT core.get_menu_id('FI'), 'sv', 'Finans' UNION ALL
SELECT core.get_menu_id('FIR'), 'sv', 'Rapporter' UNION ALL
SELECT core.get_menu_id('FSM'), 'sv', 'Uppst??llning & Underh??ll' UNION ALL
SELECT core.get_menu_id('FTT'), 'sv', 'Transaktioner & Mallar' UNION ALL
SELECT core.get_menu_id('FVV'), 'sv', 'Voucher Verifiering' UNION ALL
SELECT core.get_menu_id('GRN'), 'sv', 'Varor mottagna anteckning' UNION ALL
SELECT core.get_menu_id('IAS'), 'sv', 'Kontoutdrag Inventory' UNION ALL
SELECT core.get_menu_id('ICP'), 'sv', 'Kostnads Priser' UNION ALL
SELECT core.get_menu_id('IIM'), 'sv', 'Inventering R??relser' UNION ALL
SELECT core.get_menu_id('IR'), 'sv', 'Rapporter' UNION ALL
SELECT core.get_menu_id('ISM'), 'sv', 'Uppst??llning & Underh??ll' UNION ALL
SELECT core.get_menu_id('ISP'), 'sv', 'f??rs??ljningspriser' UNION ALL
SELECT core.get_menu_id('ITM'), 'sv', 'Produkter & Artiklar' UNION ALL
SELECT core.get_menu_id('JVN'), 'sv', 'Journal Voucher Entry' UNION ALL
SELECT core.get_menu_id('LF'), 'sv', 'f??rseningsavgifter' UNION ALL
SELECT core.get_menu_id('OTS'), 'sv', 'One Time Setup' UNION ALL
SELECT core.get_menu_id('OTSI'), 'sv', '??ppning Inventory' UNION ALL
SELECT core.get_menu_id('PA'), 'sv', 'Party-konton' UNION ALL
SELECT core.get_menu_id('PAT'), 'sv', 'Betalningsvillkor' UNION ALL
SELECT core.get_menu_id('PLA'), 'sv', 'Resultatr??kning' UNION ALL
SELECT core.get_menu_id('PO'), 'sv', 'Ink??psorder' UNION ALL
SELECT core.get_menu_id('PR'), 'sv', 'Ink??ps Return' UNION ALL
SELECT core.get_menu_id('PRO'), 'sv', 'Ink??ps Omsortera' UNION ALL
SELECT core.get_menu_id('PSA'), 'sv', 'Frakt Adresser' UNION ALL
SELECT core.get_menu_id('PT'), 'sv', 'Parti Typer' UNION ALL
SELECT core.get_menu_id('PU'), 'sv', 'Ink??p' UNION ALL
SELECT core.get_menu_id('PUQ'), 'sv', 'Ink??p & Offert' UNION ALL
SELECT core.get_menu_id('PUR'), 'sv', 'Ink??ps Rapporter' UNION ALL
SELECT core.get_menu_id('PWD'), 'sv', '??ndra anv??ndarl??senord' UNION ALL
SELECT core.get_menu_id('RFC'), 'sv', 'Kvitto fr??n kund' UNION ALL
SELECT core.get_menu_id('RI'), 'sv', '??terkommande fakturor' UNION ALL
SELECT core.get_menu_id('RIS'), 'sv', '??terkommande Faktura Setup' UNION ALL
SELECT core.get_menu_id('SA'), 'sv', 'F??rs??ljning' UNION ALL
SELECT core.get_menu_id('SAP'), 'sv', 'GL Access Policy' UNION ALL
SELECT core.get_menu_id('SAQ'), 'sv', 'F??rs??ljning & Offert' UNION ALL
SELECT core.get_menu_id('SAR'), 'sv', 'F??rs??ljningsrapporter' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'sv', 'Top k??pta' UNION ALL
SELECT core.get_menu_id('SAT'), 'sv', 'admin Tools' UNION ALL
SELECT core.get_menu_id('SAV'), 'sv', 'Automatisk Verifiering Policy' UNION ALL
SELECT core.get_menu_id('SCR'), 'sv', 'Cash Repository Setup' UNION ALL
SELECT core.get_menu_id('SCRS'), 'sv', 'Land Setup' UNION ALL
SELECT core.get_menu_id('SCS'), 'sv', 'Counter Setup' UNION ALL
SELECT core.get_menu_id('SCTS'), 'sv', 'l??n Setup' UNION ALL
SELECT core.get_menu_id('SD'), 'sv', 'F??rs??ljnings Leverans' UNION ALL
SELECT core.get_menu_id('SDS'), 'sv', 'Department Setup' UNION ALL
SELECT core.get_menu_id('SEAR'), 'sv', 'revisionsrapporter' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'sv', 'Inloggning View' UNION ALL
SELECT core.get_menu_id('SES'), 'sv', 'Entity Setup' UNION ALL
SELECT core.get_menu_id('SFR'), 'sv', 'Frekvens & R??kenskaps??rets Hantering' UNION ALL
SELECT core.get_menu_id('SFY'), 'sv', 'R??kenskaps??rets Information' UNION ALL
SELECT core.get_menu_id('SHI'), 'sv', 'avs??ndaren Information' UNION ALL
SELECT core.get_menu_id('SIG'), 'sv', 'artikelgrupper' UNION ALL
SELECT core.get_menu_id('SIS'), 'sv', 'Bransch Setup' UNION ALL
SELECT core.get_menu_id('SMA'), 'sv', 'Meny Access Policy' UNION ALL
SELECT core.get_menu_id('SMP'), 'sv', 'Diverse parametrar' UNION ALL
SELECT core.get_menu_id('SO'), 'sv', 'kundorder' UNION ALL
SELECT core.get_menu_id('SOB'), 'sv', 'Kontor & Branch Setup' UNION ALL
SELECT core.get_menu_id('SOS'), 'sv', 'Office Setup' UNION ALL
SELECT core.get_menu_id('SPM'), 'sv', 'Principhantering' UNION ALL
SELECT core.get_menu_id('SQ'), 'sv', 'F??rs??ljnings Offert' UNION ALL
SELECT core.get_menu_id('SR'), 'sv', 'Sales Return' UNION ALL
SELECT core.get_menu_id('SRM'), 'sv', 'Roll hantering' UNION ALL
SELECT core.get_menu_id('SSA'), 'sv', 'f??rs??ljare' UNION ALL
SELECT core.get_menu_id('SSB'), 'sv', 'varum??rken' UNION ALL
SELECT core.get_menu_id('SSC'), 'sv', 'Sammansatta artiklar' UNION ALL
SELECT core.get_menu_id('SSCD'), 'sv', 'F??rening Objekt Information' UNION ALL
SELECT core.get_menu_id('SSI'), 'sv', 'Punkt Underh??ll' UNION ALL
SELECT core.get_menu_id('SSM'), 'sv', 'Uppst??llning & Underh??ll' UNION ALL
SELECT core.get_menu_id('SSP'), 'sv', 'Aff??r Policy' UNION ALL
SELECT core.get_menu_id('SSS'), 'sv', 'State Setup' UNION ALL
SELECT core.get_menu_id('SST'), 'sv', 'S??lj Teams' UNION ALL
SELECT core.get_menu_id('STA'), 'sv', 'Aktie Justeringar' UNION ALL
SELECT core.get_menu_id('STJ'), 'sv', 'Omlagring Journal' UNION ALL
SELECT core.get_menu_id('STO'), 'sv', 'butiker' UNION ALL
SELECT core.get_menu_id('STST'), 'sv', 'Statliga F??rs??ljnings Skatter' UNION ALL
SELECT core.get_menu_id('STT'), 'sv', 'F??rvara Typer' UNION ALL
SELECT core.get_menu_id('STX'), 'sv', 'F??rs??ljnings Skatter' UNION ALL
SELECT core.get_menu_id('STXD'), 'sv', 'F??rs??ljningsskatte Detaljer' UNION ALL
SELECT core.get_menu_id('STXEX'), 'sv', 'F??rs??ljningsskatte undantar' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'sv', 'F??rs??ljnings skattefri Detaljer' UNION ALL
SELECT core.get_menu_id('STXT'), 'sv', 'F??rs??ljningsskattetyper' UNION ALL
SELECT core.get_menu_id('SUM'), 'sv', 'Anv??ndarhantering' UNION ALL
SELECT core.get_menu_id('SVV'), 'sv', 'Voucher Verifiering Policy' UNION ALL
SELECT core.get_menu_id('TB'), 'sv', 'Trial Balance' UNION ALL
SELECT core.get_menu_id('TRF'), 'sv', 'Flaggor' UNION ALL
SELECT core.get_menu_id('TXA'), 'sv', 'Skatteverket' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'sv', 'Skatteundantagna Typer' UNION ALL
SELECT core.get_menu_id('TXM'), 'sv', 'Skatte ledar-' UNION ALL
SELECT core.get_menu_id('UER'), 'sv', 'Uppdatera valutakurser' UNION ALL
SELECT core.get_menu_id('UOM'), 'sv', 'M??ttenheter';

--MALAYASIAN
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'ms', 'Slab Bonus untuk jurujual' UNION ALL
SELECT core.get_menu_id('AGS'), 'ms', 'papak Penuaan' UNION ALL
SELECT core.get_menu_id('AS'), 'ms', 'Penyata Akaun' UNION ALL
SELECT core.get_menu_id('BAK'), 'ms', 'sandaran Pangkalan Data' UNION ALL
SELECT core.get_menu_id('BO'), 'ms', 'Pejabat Kembali' UNION ALL
SELECT core.get_menu_id('BOTC'), 'ms', 'Konfigurasi cukai' UNION ALL
SELECT core.get_menu_id('BS'), 'ms', 'Kunci Kira-kira' UNION ALL
SELECT core.get_menu_id('BSA'), 'ms', 'Bonus Tugasan Slab' UNION ALL
SELECT core.get_menu_id('BSD'), 'ms', 'Bonus Slab Butiran' UNION ALL
SELECT core.get_menu_id('CBA'), 'ms', 'Akaun Bank' UNION ALL
SELECT core.get_menu_id('CC'), 'ms', 'Pusat kos' UNION ALL
SELECT core.get_menu_id('CF'), 'ms', 'Aliran tunai' UNION ALL
SELECT core.get_menu_id('CFH'), 'ms', 'Aliran Tunai Tajuk' UNION ALL
SELECT core.get_menu_id('COA'), 'ms', 'Carta Akaun' UNION ALL
SELECT core.get_menu_id('CTST'), 'ms', 'Daerah-daerah Jualan Cukai' UNION ALL
SELECT core.get_menu_id('CUOM'), 'ms', 'Unit perkarangan Langkah' UNION ALL
SELECT core.get_menu_id('CUR'), 'ms', 'Pengurusan mata Wang' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'ms', 'Statistik Pangkalan Data' UNION ALL
SELECT core.get_menu_id('DRP'), 'ms', 'Pembelian Terus' UNION ALL
SELECT core.get_menu_id('DRS'), 'ms', 'Jualan Langsung' UNION ALL
SELECT core.get_menu_id('EOD'), 'ms', 'Akhir Operasi Hari' UNION ALL
SELECT core.get_menu_id('FI'), 'ms', 'Kewangan' UNION ALL
SELECT core.get_menu_id('FIR'), 'ms', 'laporan' UNION ALL
SELECT core.get_menu_id('FSM'), 'ms', 'Persediaan & Penyelenggaraan' UNION ALL
SELECT core.get_menu_id('FTT'), 'ms', 'Urusniaga & Templates' UNION ALL
SELECT core.get_menu_id('FVV'), 'ms', 'baucer Pengesahan' UNION ALL
SELECT core.get_menu_id('GRN'), 'ms', 'Barang Diterima Nota Entry' UNION ALL
SELECT core.get_menu_id('IAS'), 'ms', 'Penyata Akaun Inventori' UNION ALL
SELECT core.get_menu_id('ICP'), 'ms', 'Harga kos' UNION ALL
SELECT core.get_menu_id('IIM'), 'ms', 'Pergerakan inventori' UNION ALL
SELECT core.get_menu_id('IR'), 'ms', 'laporan' UNION ALL
SELECT core.get_menu_id('ISM'), 'ms', 'Persediaan & Penyelenggaraan' UNION ALL
SELECT core.get_menu_id('ISP'), 'ms', 'Menjual Harga' UNION ALL
SELECT core.get_menu_id('ITM'), 'ms', 'Produk & Barangan' UNION ALL
SELECT core.get_menu_id('JVN'), 'ms', 'Journal Voucher Entry' UNION ALL
SELECT core.get_menu_id('LF'), 'ms', 'Bayaran Lewat' UNION ALL
SELECT core.get_menu_id('OTS'), 'ms', 'Satu Persediaan Masa' UNION ALL
SELECT core.get_menu_id('OTSI'), 'ms', 'Inventori membuka' UNION ALL
SELECT core.get_menu_id('PA'), 'ms', 'Akaun Pihak' UNION ALL
SELECT core.get_menu_id('PAT'), 'ms', 'Terma pembayaran' UNION ALL
SELECT core.get_menu_id('PLA'), 'ms', 'Untung & Rugi' UNION ALL
SELECT core.get_menu_id('PO'), 'ms', 'Pesanan Pembelian' UNION ALL
SELECT core.get_menu_id('PR'), 'ms', 'pembelian Pulangan' UNION ALL
SELECT core.get_menu_id('PRO'), 'ms', 'pembelian Pesanan Semula' UNION ALL
SELECT core.get_menu_id('PSA'), 'ms', 'Alamat Penghantaran' UNION ALL
SELECT core.get_menu_id('PT'), 'ms', 'Jenis parti' UNION ALL
SELECT core.get_menu_id('PU'), 'ms', 'pembelian' UNION ALL
SELECT core.get_menu_id('PUQ'), 'ms', 'Pembelian & Sebut Harga' UNION ALL
SELECT core.get_menu_id('PUR'), 'ms', 'Laporan pembelian' UNION ALL
SELECT core.get_menu_id('PWD'), 'ms', 'Tukar Pengguna Kata Laluan' UNION ALL
SELECT core.get_menu_id('RFC'), 'ms', 'Penerimaan daripada Pelanggan' UNION ALL
SELECT core.get_menu_id('RI'), 'ms', 'Invois berulang' UNION ALL
SELECT core.get_menu_id('RIS'), 'ms', 'Berulang Persediaan Invois' UNION ALL
SELECT core.get_menu_id('SA'), 'ms', 'jualan' UNION ALL
SELECT core.get_menu_id('SAP'), 'ms', 'Dasar Akses GL' UNION ALL
SELECT core.get_menu_id('SAQ'), 'ms', 'Jualan & Sebut Harga' UNION ALL
SELECT core.get_menu_id('SAR'), 'ms', 'jualan Laporan' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'ms', 'Item Jualan Top' UNION ALL
SELECT core.get_menu_id('SAT'), 'ms', 'Alat admin' UNION ALL
SELECT core.get_menu_id('SAV'), 'ms', 'Dasar Pengesahan automatik' UNION ALL
SELECT core.get_menu_id('SCR'), 'ms', 'Repository Tunai Persediaan' UNION ALL
SELECT core.get_menu_id('SCRS'), 'ms', 'negara Persediaan' UNION ALL
SELECT core.get_menu_id('SCS'), 'ms', 'Persediaan kaunter' UNION ALL
SELECT core.get_menu_id('SCTS'), 'ms', 'County Persediaan' UNION ALL
SELECT core.get_menu_id('SD'), 'ms', 'Penghantaran jualan' UNION ALL
SELECT core.get_menu_id('SDS'), 'ms', 'Jabatan Persediaan' UNION ALL
SELECT core.get_menu_id('SEAR'), 'ms', 'Laporan Audit' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'ms', 'Log masuk View' UNION ALL
SELECT core.get_menu_id('SES'), 'ms', 'entiti Persediaan' UNION ALL
SELECT core.get_menu_id('SFR'), 'ms', 'Pengurusan Frekuensi & Tahun Anggaran' UNION ALL
SELECT core.get_menu_id('SFY'), 'ms', 'Tahun fiskal Maklumat' UNION ALL
SELECT core.get_menu_id('SHI'), 'ms', 'penghantar Maklumat' UNION ALL
SELECT core.get_menu_id('SIG'), 'ms', 'Kumpulan Perkara' UNION ALL
SELECT core.get_menu_id('SIS'), 'ms', 'industri Persediaan' UNION ALL
SELECT core.get_menu_id('SMA'), 'ms', 'Dasar Akses Menu' UNION ALL
SELECT core.get_menu_id('SMP'), 'ms', 'Parameter Pelbagai' UNION ALL
SELECT core.get_menu_id('SO'), 'ms', 'Perintah jualan' UNION ALL
SELECT core.get_menu_id('SOB'), 'ms', 'Pejabat & Cawangan Persediaan' UNION ALL
SELECT core.get_menu_id('SOS'), 'ms', 'Pejabat Persediaan' UNION ALL
SELECT core.get_menu_id('SPM'), 'ms', 'Pengurusan Polisi' UNION ALL
SELECT core.get_menu_id('SQ'), 'ms', 'Sebut Harga jualan' UNION ALL
SELECT core.get_menu_id('SR'), 'ms', 'jualan Pulangan' UNION ALL
SELECT core.get_menu_id('SRM'), 'ms', 'Pengurusan peranan' UNION ALL
SELECT core.get_menu_id('SSA'), 'ms', 'jurujual' UNION ALL
SELECT core.get_menu_id('SSB'), 'ms', 'jenama' UNION ALL
SELECT core.get_menu_id('SSC'), 'ms', 'Item kompaun' UNION ALL
SELECT core.get_menu_id('SSCD'), 'ms', 'Butiran Kompaun Perkara' UNION ALL
SELECT core.get_menu_id('SSI'), 'ms', 'Penyelenggaraan Perkara' UNION ALL
SELECT core.get_menu_id('SSM'), 'ms', 'Persediaan & Penyelenggaraan' UNION ALL
SELECT core.get_menu_id('SSP'), 'ms', 'Dasar Store' UNION ALL
SELECT core.get_menu_id('SSS'), 'ms', 'Persediaan Negeri' UNION ALL
SELECT core.get_menu_id('SST'), 'ms', 'Pasukan jualan' UNION ALL
SELECT core.get_menu_id('STA'), 'ms', 'Pelarasan saham' UNION ALL
SELECT core.get_menu_id('STJ'), 'ms', 'Pemindahan Saham Journal' UNION ALL
SELECT core.get_menu_id('STO'), 'ms', 'kedai' UNION ALL
SELECT core.get_menu_id('STST'), 'ms', 'Negeri Cukai Jualan' UNION ALL
SELECT core.get_menu_id('STT'), 'ms', 'Jenis kedai' UNION ALL
SELECT core.get_menu_id('STX'), 'ms', 'Cukai jualan' UNION ALL
SELECT core.get_menu_id('STXD'), 'ms', 'Butiran Cukai Jualan' UNION ALL
SELECT core.get_menu_id('STXEX'), 'ms', 'Mengecualikan Cukai Jualan' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'ms', 'Cukai Jualan Butiran Dikecualikan' UNION ALL
SELECT core.get_menu_id('STXT'), 'ms', 'Jenis Cukai Jualan' UNION ALL
SELECT core.get_menu_id('SUM'), 'ms', 'Pengurusan Pengguna' UNION ALL
SELECT core.get_menu_id('SVV'), 'ms', 'Dasar Pengesahan baucar' UNION ALL
SELECT core.get_menu_id('TB'), 'ms', 'Imbangan Duga' UNION ALL
SELECT core.get_menu_id('TRF'), 'ms', 'bendera' UNION ALL
SELECT core.get_menu_id('TXA'), 'ms', 'Pihak Berkuasa cukai' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'ms', 'Cukai Jenis Dikecualikan' UNION ALL
SELECT core.get_menu_id('TXM'), 'ms', 'Master cukai' UNION ALL
SELECT core.get_menu_id('UER'), 'ms', 'Kadar Pertukaran Update' UNION ALL
SELECT core.get_menu_id('UOM'), 'ms', 'Unit Tindakan';

--INDONESIAN
INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'id', 'Slab bonus untuk Staf Penjualan' UNION ALL
SELECT core.get_menu_id('AGS'), 'id', 'Lempengan Penuaan' UNION ALL
SELECT core.get_menu_id('AS'), 'id', 'rekening' UNION ALL
SELECT core.get_menu_id('BAK'), 'id', 'backup database' UNION ALL
SELECT core.get_menu_id('BO'), 'id', 'Back Office' UNION ALL
SELECT core.get_menu_id('BOTC'), 'id', 'Konfigurasi pajak' UNION ALL
SELECT core.get_menu_id('BS'), 'id', 'neraca Keuangan' UNION ALL
SELECT core.get_menu_id('BSA'), 'id', 'Bonus Slab Tugas' UNION ALL
SELECT core.get_menu_id('BSD'), 'id', 'Bonus Slab Detail' UNION ALL
SELECT core.get_menu_id('CBA'), 'id', 'Rekening Bank' UNION ALL
SELECT core.get_menu_id('CC'), 'id', 'Pusat biaya' UNION ALL
SELECT core.get_menu_id('CF'), 'id', 'Arus Kas' UNION ALL
SELECT core.get_menu_id('CFH'), 'id', 'Arus Kas Pos' UNION ALL
SELECT core.get_menu_id('COA'), 'id', 'Bagan Akun' UNION ALL
SELECT core.get_menu_id('CTST'), 'id', 'Kabupaten Penjualan Pajak' UNION ALL
SELECT core.get_menu_id('CUOM'), 'id', 'Unit senyawa Ukur' UNION ALL
SELECT core.get_menu_id('CUR'), 'id', 'Manajemen Mata Uang' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'id', 'Statistik database' UNION ALL
SELECT core.get_menu_id('DRP'), 'id', 'Pembelian langsung' UNION ALL
SELECT core.get_menu_id('DRS'), 'id', 'Penjualan Langsung' UNION ALL
SELECT core.get_menu_id('EOD'), 'id', 'Akhir Hari Operasi' UNION ALL
SELECT core.get_menu_id('FI'), 'id', 'keuangan' UNION ALL
SELECT core.get_menu_id('FIR'), 'id', 'laporan' UNION ALL
SELECT core.get_menu_id('FSM'), 'id', 'Pengaturan & Maintenance' UNION ALL
SELECT core.get_menu_id('FTT'), 'id', 'Transaksi & Template' UNION ALL
SELECT core.get_menu_id('FVV'), 'id', 'Verifikasi voucher' UNION ALL
SELECT core.get_menu_id('GRN'), 'id', 'GRN masuk' UNION ALL
SELECT core.get_menu_id('IAS'), 'id', 'Rekening persediaan' UNION ALL
SELECT core.get_menu_id('ICP'), 'id', 'Harga biaya' UNION ALL
SELECT core.get_menu_id('IIM'), 'id', 'Mutasi persediaan' UNION ALL
SELECT core.get_menu_id('IR'), 'id', 'laporan' UNION ALL
SELECT core.get_menu_id('ISM'), 'id', 'Pengaturan & Maintenance' UNION ALL
SELECT core.get_menu_id('ISP'), 'id', 'Jual Harga' UNION ALL
SELECT core.get_menu_id('ITM'), 'id', 'Produk & Produk' UNION ALL
SELECT core.get_menu_id('JVN'), 'id', 'Jurnal Voucher Masuk' UNION ALL
SELECT core.get_menu_id('LF'), 'id', 'akhir Biaya' UNION ALL
SELECT core.get_menu_id('OTS'), 'id', 'One Time Pengaturan' UNION ALL
SELECT core.get_menu_id('OTSI'), 'id', 'membuka Persediaan' UNION ALL
SELECT core.get_menu_id('PA'), 'id', 'Akun Partai' UNION ALL
SELECT core.get_menu_id('PAT'), 'id', 'Syarat Pembayaran' UNION ALL
SELECT core.get_menu_id('PLA'), 'id', 'Laba & Rugi' UNION ALL
SELECT core.get_menu_id('PO'), 'id', 'Purchase Order' UNION ALL
SELECT core.get_menu_id('PR'), 'id', 'pembelian Kembali' UNION ALL
SELECT core.get_menu_id('PRO'), 'id', 'pembelian perekam' UNION ALL
SELECT core.get_menu_id('PSA'), 'id', 'Alamat pengiriman' UNION ALL
SELECT core.get_menu_id('PT'), 'id', 'Jenis Partai' UNION ALL
SELECT core.get_menu_id('PU'), 'id', 'pembelian' UNION ALL
SELECT core.get_menu_id('PUQ'), 'id', 'Pembelian & Quotation' UNION ALL
SELECT core.get_menu_id('PUR'), 'id', 'Laporan pembelian' UNION ALL
SELECT core.get_menu_id('PWD'), 'id', 'Ubah Password Pengguna' UNION ALL
SELECT core.get_menu_id('RFC'), 'id', 'Penerimaan dari Pelanggan' UNION ALL
SELECT core.get_menu_id('RI'), 'id', 'Faktur berulang' UNION ALL
SELECT core.get_menu_id('RIS'), 'id', 'Berulang Faktur Pengaturan' UNION ALL
SELECT core.get_menu_id('SA'), 'id', 'penjualan' UNION ALL
SELECT core.get_menu_id('SAP'), 'id', 'GL Kebijakan Access' UNION ALL
SELECT core.get_menu_id('SAQ'), 'id', 'Penjualan & Quotation' UNION ALL
SELECT core.get_menu_id('SAR'), 'id', 'Laporan penjualan' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'id', 'Top Selling Produk' UNION ALL
SELECT core.get_menu_id('SAT'), 'id', 'Alat admin' UNION ALL
SELECT core.get_menu_id('SAV'), 'id', 'Kebijakan Verifikasi Otomatis' UNION ALL
SELECT core.get_menu_id('SCR'), 'id', 'Repository kas Pengaturan' UNION ALL
SELECT core.get_menu_id('SCRS'), 'id', 'negara Pengaturan' UNION ALL
SELECT core.get_menu_id('SCS'), 'id', 'kontra Pengaturan' UNION ALL
SELECT core.get_menu_id('SCTS'), 'id', 'county Pengaturan' UNION ALL
SELECT core.get_menu_id('SD'), 'id', 'penjualan Pengiriman' UNION ALL
SELECT core.get_menu_id('SDS'), 'id', 'Departemen Pengaturan' UNION ALL
SELECT core.get_menu_id('SEAR'), 'id', 'Laporan Audit' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'id', 'Login View' UNION ALL
SELECT core.get_menu_id('SES'), 'id', 'entitas Pengaturan' UNION ALL
SELECT core.get_menu_id('SFR'), 'id', 'Manajemen Frekuensi & Fiskal Tahun' UNION ALL
SELECT core.get_menu_id('SFY'), 'id', 'Fiskal Informasi Tahun' UNION ALL
SELECT core.get_menu_id('SHI'), 'id', 'pengirim Informasi' UNION ALL
SELECT core.get_menu_id('SIG'), 'id', 'Item Grup' UNION ALL
SELECT core.get_menu_id('SIS'), 'id', 'Pengaturan industri' UNION ALL
SELECT core.get_menu_id('SMA'), 'id', 'Menu Akses Kebijakan' UNION ALL
SELECT core.get_menu_id('SMP'), 'id', 'Parameter lain-lain' UNION ALL
SELECT core.get_menu_id('SO'), 'id', 'Pesanan penjualan' UNION ALL
SELECT core.get_menu_id('SOB'), 'id', 'Kantor Cabang & Pengaturan' UNION ALL
SELECT core.get_menu_id('SOS'), 'id', 'kantor Pengaturan' UNION ALL
SELECT core.get_menu_id('SPM'), 'id', 'Kebijakan Manajemen' UNION ALL
SELECT core.get_menu_id('SQ'), 'id', 'sales Quotation' UNION ALL
SELECT core.get_menu_id('SR'), 'id', 'penjualan Kembali' UNION ALL
SELECT core.get_menu_id('SRM'), 'id', 'Manajemen peran' UNION ALL
SELECT core.get_menu_id('SSA'), 'id', 'penjual' UNION ALL
SELECT core.get_menu_id('SSB'), 'id', 'merek' UNION ALL
SELECT core.get_menu_id('SSC'), 'id', 'senyawa Item' UNION ALL
SELECT core.get_menu_id('SSCD'), 'id', 'Senyawa Item detail' UNION ALL
SELECT core.get_menu_id('SSI'), 'id', 'Item Maintenance' UNION ALL
SELECT core.get_menu_id('SSM'), 'id', 'Pengaturan & Maintenance' UNION ALL
SELECT core.get_menu_id('SSP'), 'id', 'Kebijakan toko' UNION ALL
SELECT core.get_menu_id('SSS'), 'id', 'Pengaturan negara' UNION ALL
SELECT core.get_menu_id('SST'), 'id', 'penjualan Tim' UNION ALL
SELECT core.get_menu_id('STA'), 'id', 'Penyesuaian saham' UNION ALL
SELECT core.get_menu_id('STJ'), 'id', 'Jurnal transfer saham' UNION ALL
SELECT core.get_menu_id('STO'), 'id', 'toko' UNION ALL
SELECT core.get_menu_id('STST'), 'id', 'Penjualan negara Pajak' UNION ALL
SELECT core.get_menu_id('STT'), 'id', 'Jenis toko' UNION ALL
SELECT core.get_menu_id('STX'), 'id', 'penjualan Pajak' UNION ALL
SELECT core.get_menu_id('STXD'), 'id', 'Rincian Pajak Penjualan' UNION ALL
SELECT core.get_menu_id('STXEX'), 'id', 'Membebaskan Pajak Penjualan' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'id', 'Pajak Penjualan Detail Bebaskan' UNION ALL
SELECT core.get_menu_id('STXT'), 'id', 'Jenis Pajak Penjualan' UNION ALL
SELECT core.get_menu_id('SUM'), 'id', 'Manajemen pengguna' UNION ALL
SELECT core.get_menu_id('SVV'), 'id', 'Kebijakan Verifikasi Voucher' UNION ALL
SELECT core.get_menu_id('TB'), 'id', 'Neraca Saldo' UNION ALL
SELECT core.get_menu_id('TRF'), 'id', 'Flags' UNION ALL
SELECT core.get_menu_id('TXA'), 'id', 'Kantor Pajak' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'id', 'Jenis Bebaskan Pajak' UNION ALL
SELECT core.get_menu_id('TXM'), 'id', 'Guru pajak' UNION ALL
SELECT core.get_menu_id('UER'), 'id', 'Perbarui Tukar' UNION ALL
SELECT core.get_menu_id('UOM'), 'id', 'Satuan Ukur';

--FILIPINO

INSERT INTO core.menu_locale(menu_id, culture, menu_text)
SELECT core.get_menu_id('ABS'), 'fil', 'Bonus laha para sa Salesperson' UNION ALL
SELECT core.get_menu_id('AGS'), 'fil', 'Pagtanda Slabs' UNION ALL
SELECT core.get_menu_id('AS'), 'fil', 'Statement ng Account' UNION ALL
SELECT core.get_menu_id('BAK'), 'fil', 'backup Database' UNION ALL
SELECT core.get_menu_id('BO'), 'fil', 'Bumalik Office' UNION ALL
SELECT core.get_menu_id('BOTC'), 'fil', 'Configuration ng Buwis' UNION ALL
SELECT core.get_menu_id('BS'), 'fil', 'balanse Sheet' UNION ALL
SELECT core.get_menu_id('BSA'), 'fil', 'Bonus tilad Pagtatalaga' UNION ALL
SELECT core.get_menu_id('BSD'), 'fil', 'Mga Detalye ng Bonus na tilad' UNION ALL
SELECT core.get_menu_id('CBA'), 'fil', 'bank Account' UNION ALL
SELECT core.get_menu_id('CC'), 'fil', 'Sentro ng Gastos' UNION ALL
SELECT core.get_menu_id('CF'), 'fil', 'Daloy ng cash' UNION ALL
SELECT core.get_menu_id('CFH'), 'fil', 'Mga Heading Daloy ng Cash' UNION ALL
SELECT core.get_menu_id('COA'), 'fil', 'Tsart ng Account' UNION ALL
SELECT core.get_menu_id('CTST'), 'fil', 'Mga county Sales Buwis' UNION ALL
SELECT core.get_menu_id('CUOM'), 'fil', 'Compound Unit ng Pagsukat' UNION ALL
SELECT core.get_menu_id('CUR'), 'fil', 'Pamamahala ng Salapi' UNION ALL
SELECT core.get_menu_id('DBSTAT'), 'fil', 'Istatistika ng Database' UNION ALL
SELECT core.get_menu_id('DRP'), 'fil', 'Direktang Pagbili' UNION ALL
SELECT core.get_menu_id('DRS'), 'fil', 'Direktang Benta' UNION ALL
SELECT core.get_menu_id('EOD'), 'fil', 'Katapusan ng Araw ng operasyon' UNION ALL
SELECT core.get_menu_id('FI'), 'fil', 'pananalapi' UNION ALL
SELECT core.get_menu_id('FIR'), 'fil', 'Mga Ulat' UNION ALL
SELECT core.get_menu_id('FSM'), 'fil', 'Pag-setup at Pagpapanatili' UNION ALL
SELECT core.get_menu_id('FTT'), 'fil', 'Mga transaksyon at Template' UNION ALL
SELECT core.get_menu_id('FVV'), 'fil', 'voucher Pag-verify' UNION ALL
SELECT core.get_menu_id('GRN'), 'fil', 'GRN Entry' UNION ALL
SELECT core.get_menu_id('IAS'), 'fil', 'Pahayag Imbentaryo Account' UNION ALL
SELECT core.get_menu_id('ICP'), 'fil', 'Ang mga presyo ng Gastos' UNION ALL
SELECT core.get_menu_id('IIM'), 'fil', 'mga paggalaw ng Imbentaryo' UNION ALL
SELECT core.get_menu_id('IR'), 'fil', 'Mga Ulat' UNION ALL
SELECT core.get_menu_id('ISM'), 'fil', 'Pag-setup at Pagpapanatili' UNION ALL
SELECT core.get_menu_id('ISP'), 'fil', 'Pagbebenta ng Mga Presyo' UNION ALL
SELECT core.get_menu_id('ITM'), 'fil', 'Mga Produkto at Mga Item' UNION ALL
SELECT core.get_menu_id('JVN'), 'fil', 'Journal Entry Voucher' UNION ALL
SELECT core.get_menu_id('LF'), 'fil', 'Mga huling Bayarin' UNION ALL
SELECT core.get_menu_id('OTS'), 'fil', 'Isang Oras sa Pag-setup' UNION ALL
SELECT core.get_menu_id('OTSI'), 'fil', 'Pagbubukas ng Imbentaryo' UNION ALL
SELECT core.get_menu_id('PA'), 'fil', 'Party Account' UNION ALL
SELECT core.get_menu_id('PAT'), 'fil', 'Mga Tuntunin sa Pagbabayad' UNION ALL
SELECT core.get_menu_id('PLA'), 'fil', 'Profit & Pagkawala ng Account' UNION ALL
SELECT core.get_menu_id('PO'), 'fil', 'Purchase Order' UNION ALL
SELECT core.get_menu_id('PR'), 'fil', 'Bumili ng Return' UNION ALL
SELECT core.get_menu_id('PRO'), 'fil', 'Bumili ng Muling mag-order' UNION ALL
SELECT core.get_menu_id('PSA'), 'fil', 'Address ng Pagpapadala' UNION ALL
SELECT core.get_menu_id('PT'), 'fil', 'Mga Uri ng Party' UNION ALL
SELECT core.get_menu_id('PU'), 'fil', 'pagbili' UNION ALL
SELECT core.get_menu_id('PUQ'), 'fil', 'Pagbili at panipi' UNION ALL
SELECT core.get_menu_id('PUR'), 'fil', 'Ulat ng Pagbili' UNION ALL
SELECT core.get_menu_id('PWD'), 'fil', 'Baguhin ang User Password' UNION ALL
SELECT core.get_menu_id('RFC'), 'fil', 'Resibo mula sa Customer' UNION ALL
SELECT core.get_menu_id('RI'), 'fil', 'umuulit na mga Invoice' UNION ALL
SELECT core.get_menu_id('RIS'), 'fil', 'Umuulit na Pag-setup ng Invoice' UNION ALL
SELECT core.get_menu_id('SA'), 'fil', 'Sales' UNION ALL
SELECT core.get_menu_id('SAP'), 'fil', 'GL Patakaran sa Pag-access' UNION ALL
SELECT core.get_menu_id('SAQ'), 'fil', 'Benta at panipi' UNION ALL
SELECT core.get_menu_id('SAR'), 'fil', 'Mga Ulat sa Benta' UNION ALL
SELECT core.get_menu_id('SAR-TSI'), 'fil', 'Pinakamabentang Item' UNION ALL
SELECT core.get_menu_id('SAT'), 'fil', 'Mga Tool ng Admin' UNION ALL
SELECT core.get_menu_id('SAV'), 'fil', 'Patakaran sa Awtomatikong Pag-verify' UNION ALL
SELECT core.get_menu_id('SCR'), 'fil', 'Cash imbakan Setup' UNION ALL
SELECT core.get_menu_id('SCRS'), 'fil', 'Setup bansa' UNION ALL
SELECT core.get_menu_id('SCS'), 'fil', 'counter-setup' UNION ALL
SELECT core.get_menu_id('SCTS'), 'fil', 'Setup ng county' UNION ALL
SELECT core.get_menu_id('SD'), 'fil', 'Paghahatid ng Sales' UNION ALL
SELECT core.get_menu_id('SDS'), 'fil', 'Kagawaran Setup' UNION ALL
SELECT core.get_menu_id('SEAR'), 'fil', 'Ulat ng pag-audit' UNION ALL
SELECT core.get_menu_id('SEAR-LV'), 'fil', 'Tingnan ang Pag-login' UNION ALL
SELECT core.get_menu_id('SES'), 'fil', 'entity Setup' UNION ALL
SELECT core.get_menu_id('SFR'), 'fil', 'Pamamahala Taon Dalas & Pananalapi' UNION ALL
SELECT core.get_menu_id('SFY'), 'fil', 'Tama sa Pananalapi Impormasyon Taon' UNION ALL
SELECT core.get_menu_id('SHI'), 'fil', 'embarkador Impormasyon' UNION ALL
SELECT core.get_menu_id('SIG'), 'fil', 'Mga Pangkat item' UNION ALL
SELECT core.get_menu_id('SIS'), 'fil', 'Setup ng industriya' UNION ALL
SELECT core.get_menu_id('SMA'), 'fil', 'Menu Patakaran sa Pag-access' UNION ALL
SELECT core.get_menu_id('SMP'), 'fil', 'Sari-saring Parameter' UNION ALL
SELECT core.get_menu_id('SO'), 'fil', 'Pagkakasunod-sunod ng Sales' UNION ALL
SELECT core.get_menu_id('SOB'), 'fil', 'Setup ng Opisina at Sangay' UNION ALL
SELECT core.get_menu_id('SOS'), 'fil', 'Setup ng Office' UNION ALL
SELECT core.get_menu_id('SPM'), 'fil', 'Pamamahala ng patakaran' UNION ALL
SELECT core.get_menu_id('SQ'), 'fil', 'Sales panipi' UNION ALL
SELECT core.get_menu_id('SR'), 'fil', 'Sales Return' UNION ALL
SELECT core.get_menu_id('SRM'), 'fil', 'Pamamahala ng Tungkulin' UNION ALL
SELECT core.get_menu_id('SSA'), 'fil', 'Mga Salesperson' UNION ALL
SELECT core.get_menu_id('SSB'), 'fil', 'Mga Tatak' UNION ALL
SELECT core.get_menu_id('SSC'), 'fil', 'Compound Item' UNION ALL
SELECT core.get_menu_id('SSCD'), 'fil', 'Mga Detalye Compound Item' UNION ALL
SELECT core.get_menu_id('SSI'), 'fil', 'Pagpapanatili item' UNION ALL
SELECT core.get_menu_id('SSM'), 'fil', 'Pag-setup at Pagpapanatili' UNION ALL
SELECT core.get_menu_id('SSP'), 'fil', 'Patakaran sa Store' UNION ALL
SELECT core.get_menu_id('SSS'), 'fil', 'Setup ng estado' UNION ALL
SELECT core.get_menu_id('SST'), 'fil', 'Sales Mga Koponan' UNION ALL
SELECT core.get_menu_id('STA'), 'fil', 'stock Adjustments' UNION ALL
SELECT core.get_menu_id('STJ'), 'fil', 'Stock Transfer Journal' UNION ALL
SELECT core.get_menu_id('STO'), 'fil', 'Tindahan' UNION ALL
SELECT core.get_menu_id('STST'), 'fil', 'Benta ng estado ang mga buwis' UNION ALL
SELECT core.get_menu_id('STT'), 'fil', 'Mga Uri ng Store' UNION ALL
SELECT core.get_menu_id('STX'), 'fil', 'Sales Buwis' UNION ALL
SELECT core.get_menu_id('STXD'), 'fil', 'Mga Detalye ng Buwis sa Pagbebenta' UNION ALL
SELECT core.get_menu_id('STXEX'), 'fil', 'Hindi isinasama ang mga Buwis sa Pagbebenta' UNION ALL
SELECT core.get_menu_id('STXEXD'), 'fil', 'Mga Detalye Exempt Buwis sa Pagbebenta' UNION ALL
SELECT core.get_menu_id('STXT'), 'fil', 'Mga Uri ng Buwis sa Pagbebenta' UNION ALL
SELECT core.get_menu_id('SUM'), 'fil', 'Pamamahala ng Gumagamit' UNION ALL
SELECT core.get_menu_id('SVV'), 'fil', 'Patakaran sa Pag-verify ng Voucher' UNION ALL
SELECT core.get_menu_id('TB'), 'fil', 'Pagsubok Balanse' UNION ALL
SELECT core.get_menu_id('TRF'), 'fil', 'Ang Flag' UNION ALL
SELECT core.get_menu_id('TXA'), 'fil', 'Awtoridad ng Buwis' UNION ALL
SELECT core.get_menu_id('TXEXT'), 'fil', 'Tax Exempt Mga Uri' UNION ALL
SELECT core.get_menu_id('TXM'), 'fil', 'Buwis Master' UNION ALL
SELECT core.get_menu_id('UER'), 'fil', 'I-update ang mga rate Exchange' UNION ALL
SELECT core.get_menu_id('UOM'), 'fil', 'Unit ng Pagsukat';
