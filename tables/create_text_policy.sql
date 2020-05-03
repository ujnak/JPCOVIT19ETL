begin
  ctx_ddl.create_preference('pdf_filter', 'AUTO_FILTER');
  ctx_ddl.create_policy('pdf_policy', 'pdf_filter');
end
/