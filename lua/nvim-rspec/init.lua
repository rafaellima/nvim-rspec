local function run_spec()
  local spec_file = vim.fn.expand("%:p")

  local cmd = ':!bundle exec rspec ' .. spec_file .. ''
  vim.cmd(cmd)
end

local function run_nearest_spec()
  local spec_file = vim.fn.expand("%:p")
  local line = vim.fn.line(".")

  local cmd = ':!bundle exec rspec ' .. spec_file .. ':' .. line .. ''
  vim.cmd(cmd)
end

local function run_all()
  local cmd = ':!bundle exec rspec spec/'
  vim.cmd(cmd)
end

return {
  run_spec = run_spec,
  run_nearest_spec = run_nearest_spec,
  run_all = run_all,
}
