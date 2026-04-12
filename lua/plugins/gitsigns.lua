pcall(function()
  require("gitsigns").setup({
    signs = {
      add={text='+'},
      change={text='~'},
      delete={text='_'},
      topdelete={text='‾'},
      changedelete={text='~'},
    },

    on_attach=function(bufnr)
      local gs = package.loaded.gitsigns
      local map=function(m,l,r,d)
        vim.keymap.set(m,l,r,{buffer=bufnr,desc=d})
      end

      map('n',']c',gs.next_hunk,'Next Change')
      map('n','[c',gs.prev_hunk,'Previous Change')

      map({'n','v'},'<leader>gsh',gs.stage_hunk,'Git Stage Hunk')
      map('n','<leader>gsb',gs.stage_buffer,'Git Stage Buffer')

      map({'n','v'},'<leader>grh',gs.reset_hunk,'Git Reset Hunk')
      map('n','<leader>grb',gs.reset_buffer,'Git Reset Buffer')

      map('n','<leader>gph',gs.preview_hunk,'Git Preview Hunk')

      map('n','<leader>gb',function()
        gs.blame_line({full=true})
      end,'Git Blame Line')

      map('n','<leader>gdf',gs.diffthis,'Git Diff File')
      map('n','<leader>gdh',function()
        gs.diffthis('~')
      end,'Git Diff Head')

      map('n','<leader>gtb',gs.toggle_current_line_blame,'Toggle Blame')
      map('n','<leader>gtd',gs.toggle_deleted,'Toggle Deleted')

      map('n','<leader>guh',gs.undo_stage_hunk,'Undo Stage')
    end
  })
end)
