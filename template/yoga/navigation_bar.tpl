<div class="navigationBar">
  {if isset($navbar.URL_FIRST)}
  <a href="{$navbar.URL_FIRST}" rel="first">{'first_page'|@translate}</a> |
  <a href="{$navbar.URL_PREV}" rel="prev">{'previous_page'|@translate}</a> |
  {else}
  {'first_page'|@translate} |
  {'previous_page'|@translate} |
  {/if}

  {assign var='prev_page' value=0}
  {foreach from=$navbar.pages key=page item=url}
    {if $page > $prev_page+1}...{/if}
    {if $page == $navbar.CURRENT_PAGE}
    <span class="pageNumberSelected">{$page}</span>
    {else}
    <a href="{$url}">{$page}</a>
    {/if}
    {assign var='prev_page' value=$page}
  {/foreach}

  {if isset($navbar.URL_NEXT)}
  | <a href="{$navbar.URL_NEXT}" rel="next">{'next_page'|@translate}</a>
  | <a href="{$navbar.URL_LAST}" rel="last">{'last_page'|@translate}</a>
  {else}
  | {'next_page'|@translate}
  | {'last_page'|@translate}
  {/if}
</div>
