<!--/* caption: 基本テンプレート（標準） */-->
<!DOCTYPE html>
<html lang="ja" xmlns:th="http://www.thymeleaf.org" th:fragment="layout(title, content)">
<head th:fragment="head(title)">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title th:replace="${title}">タイトル</title>
    <link rel="icon" href="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2032%2032'%3E%3Crect%20width='32'%20height='32'%20rx='8'%20fill='%232563eb'/%3E%3C/svg%3E">
    <link rel="stylesheet" th:href="@{/css/BaseStylesheet.css}"/>
    <link th:replace="~{parts/stylesheets :: links}"/>
</head>
<body class="min-h-screen bg-slate-100 text-slate-800">
    <header th:fragment="header" class="sticky top-0 z-50 flex h-14 items-center justify-between border-b border-slate-200 bg-white/95 px-4 backdrop-blur sm:px-6">
        <div class="flex items-center gap-2 sm:gap-3">
            <button type="button" id="sidebar-collapse" aria-controls="sidebar" aria-expanded="true" aria-label="メニューをたたむ"
                    class="hidden h-9 w-9 place-items-center rounded-lg text-slate-600 transition hover:bg-slate-100 lg:grid">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <rect x="3" y="4" width="18" height="16" rx="2"/>
                    <path d="M9 4v16"/>
                </svg>
            </button>
            <button type="button" id="sidebar-toggle" aria-controls="sidebar" aria-expanded="false" aria-label="メニューを開く"
                    class="grid h-9 w-9 place-items-center rounded-lg text-slate-600 transition hover:bg-slate-100 lg:hidden">
                <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true">
                    <path d="M4 6h16M4 12h16M4 18h16"/>
                </svg>
            </button>
            <span class="grid h-8 w-8 place-items-center rounded-lg bg-blue-600 text-sm font-bold text-white">C</span>
            <span class="hidden text-lg font-bold tracking-tight text-slate-900 sm:inline">CEMシステム</span>
        </div>
        <div class="flex items-center gap-3 sm:gap-4">
            <span class="hidden text-sm text-slate-500 sm:inline" th:if="${session?.UserNM != null and session?.UserNM != ''}" th:text="${session.UserNM}">田中 太郎</span>
            <form th:if="${session?.LoginUsr != null}" th:action="@{/logout}" method="post" class="m-0"><button type="submit" class="rounded-md border border-slate-300 bg-white px-3 py-1.5 text-sm font-medium text-slate-700 transition hover:bg-slate-50">ログアウト</button></form>
        </div>
    </header>

    <div id="app-shell" class="flex h-[calc(100vh-3.5rem)]" data-sidebar="open">
        <div id="sidebar-backdrop" class="fixed inset-0 z-30 hidden bg-slate-900/40 backdrop-blur-sm lg:hidden"></div>

        <aside th:fragment="sidebar" id="sidebar"
               class="fixed inset-y-0 left-0 z-40 w-64 -translate-x-full overflow-y-auto border-r border-slate-200 bg-white px-3 pb-4 pt-20 transition-all duration-200 lg:static lg:z-auto lg:translate-x-0 lg:pt-4">
            <nav class="space-y-1" aria-label="メインメニュー">
                <a th:href="@{/home}" aria-label="トップ" title="Top"
                   class="menu-link mb-1 flex items-center gap-3 rounded-lg px-3 py-2 text-sm font-medium transition hover:bg-slate-100"
                   th:classappend="${activeScreen == 'home'} ? 'active bg-blue-50 text-blue-700' : 'text-slate-700'">
                    <span class="w-5 shrink-0 text-center" aria-hidden="true">🏠</span>
                    <span data-menu-label class="truncate">Top</span>
                </a>
                <th:block th:replace="~{base/WebPageBaseLayout :: menuItems(${sideMenu}, 0)}"></th:block>
            </nav>
            <div data-menu-label class="mt-8 truncate text-center text-xs text-slate-400">Version: 1.3.1</div>
            <script>
                document.querySelectorAll('aside .menu-link.active').forEach(function (link) {
                    for (var group = link.closest('details'); group; group = group.parentElement.closest('details')) group.open = true;
                });
            </script>
        </aside>

        <th:block th:fragment="menuItems(menuNodes, depth)" th:if="${menuNodes != null}">
            <th:block th:each="item : ${menuNodes}">
                <details th:if="${!item.children.isEmpty()}" class="group">
                    <summary data-menu-row class="flex cursor-pointer list-none items-center gap-3 rounded-lg px-3 py-2 text-sm font-medium text-slate-700 transition hover:bg-slate-100 [&::-webkit-details-marker]:hidden"
                             th:title="${item.caption}">
                        <span class="w-5 shrink-0 text-center" th:text="${item.icon}" aria-hidden="true"></span>
                        <span data-menu-label class="flex-1 truncate" th:text="${item.caption}">グループ</span>
                        <svg data-menu-chevron class="h-4 w-4 shrink-0 text-slate-400 transition-transform group-open:rotate-180" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                            <path d="m6 9 6 6 6-6"/>
                        </svg>
                    </summary>
                    <div class="mt-1 space-y-1 pl-6">
                        <th:block th:replace="~{base/WebPageBaseLayout :: menuItems(${item.children}, ${depth + 1})}"></th:block>
                    </div>
                </details>
                <a th:if="${item.children.isEmpty()}" th:href="@{${item.url}}"
                   data-menu-row class="menu-link flex items-center gap-3 rounded-lg px-3 py-2 text-sm transition hover:bg-slate-100"
                   th:attr="aria-current=${item.key == activeScreen ? 'page' : null}, title=${item.caption}"
                   th:classappend="${item.key == activeScreen} ? 'active bg-blue-50 font-semibold text-blue-700' : 'text-slate-600 hover:text-slate-900'">
                    <span class="w-5 shrink-0 text-center" th:text="${item.icon}" aria-hidden="true"></span>
                    <span data-menu-label class="truncate" th:text="${item.caption}">画面</span>
                    <span data-menu-flyout class="" th:text="${item.caption}">画面</span>
                </a>
            </th:block>
        </th:block>

        <th:block th:replace="${content}"/>
    </div>

    <script>
        (() => {
            const shell = document.getElementById('app-shell');
            const sidebar = document.getElementById('sidebar');
            const button = document.getElementById('sidebar-collapse');
            if (!shell || !sidebar || !button) return;
            const KEY = 'ks.sidebar.collapsed';
            const labels = () => sidebar.querySelectorAll('[data-menu-label]');
            const groups = () => sidebar.querySelectorAll('details');
            const apply = collapsed => {
                shell.dataset.sidebar = collapsed ? 'rail' : 'open';
                button.setAttribute('aria-expanded', String(!collapsed));
                button.setAttribute('aria-label', collapsed ? 'メニューを開く' : 'メニューをたたむ');
                button.classList.toggle('text-blue-600', collapsed);
                groups().forEach(group => {
                    if (collapsed) {
                        if (group.dataset.openBefore === undefined) group.dataset.openBefore = group.open ? '1' : '0';
                        group.open = true;
                    } else if (group.dataset.openBefore !== undefined) {
                        group.open = group.dataset.openBefore === '1';
                    }
                });
            };
            let collapsed = false;
            try { collapsed = window.localStorage.getItem(KEY) === '1'; } catch (error) { collapsed = false; }
            apply(collapsed);
            button.addEventListener('click', () => {
                collapsed = !collapsed;
                apply(collapsed);
                try { window.localStorage.setItem(KEY, collapsed ? '1' : '0'); } catch (error) { }
            });
        })();
    </script>

    <script>
        (() => {
            const sidebar = document.getElementById('sidebar');
            const backdrop = document.getElementById('sidebar-backdrop');
            const toggle = document.getElementById('sidebar-toggle');
            if (!sidebar || !backdrop || !toggle) return;
            const setOpen = open => {
                sidebar.classList.toggle('-translate-x-full', !open);
                backdrop.classList.toggle('hidden', !open);
                toggle.setAttribute('aria-expanded', String(open));
            };
            toggle.addEventListener('click', () => setOpen(sidebar.classList.contains('-translate-x-full')));
            backdrop.addEventListener('click', () => setOpen(false));
            document.addEventListener('keydown', event => { if (event.key === 'Escape') setOpen(false); });
            sidebar.querySelectorAll('a.menu-link').forEach(link => link.addEventListener('click', () => {
                if (window.matchMedia('(max-width: 1023px)').matches) setOpen(false);
            }));
        })();
    </script>
    <script>
        (() => {
            const overlay = document.createElement('div');
            overlay.id = 'api-loading';
            overlay.className = 'fixed inset-0 z-[100] hidden items-center justify-center bg-slate-900/20 backdrop-blur-[1px]';
            overlay.setAttribute('role', 'status');
            overlay.setAttribute('aria-live', 'polite');
            overlay.innerHTML = '<div class="flex flex-col items-center gap-3 rounded-xl bg-white px-8 py-6 shadow-2xl ring-1 ring-slate-200">'
                + '<span class="h-9 w-9 animate-spin rounded-full border-4 border-slate-200 border-t-blue-600"></span>'
                + '<span class="text-sm font-medium text-slate-600">読み込み中…</span></div>';
            const start = () => {
                if (!overlay.isConnected) document.body.appendChild(overlay);
            };
            if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', start, { once: true });
            else start();

            let active = 0;
            let timer = null;
            const show = () => {
                active++;
                if (active === 1) {
                    timer = window.setTimeout(() => {
                        overlay.classList.remove('hidden');
                        overlay.classList.add('flex');
                    }, 150);
                }
            };
            const hide = () => {
                active = Math.max(0, active - 1);
                if (active === 0) {
                    window.clearTimeout(timer);
                    overlay.classList.add('hidden');
                    overlay.classList.remove('flex');
                }
            };
            const originalFetch = window.fetch;
            if (originalFetch) {
                window.fetch = function (...args) {
                    show();
                    return originalFetch.apply(this, args).finally(hide);
                };
            }
            const originalSend = XMLHttpRequest.prototype.send;
            XMLHttpRequest.prototype.send = function (...args) {
                show();
                this.addEventListener('loadend', hide, { once: true });
                return originalSend.apply(this, args);
            };
        })();
    </script>
</body>
</html>
