<!--/* caption: トップナビ（コンパクト） */-->
<!DOCTYPE html>
<!--/* 基本テンプレート WebPageBaseLayoutTopNav（BaseObject/WebPageBaseTemplates/WebPageBaseLayoutTopNav.tpl）
       テンプレート（BaseObjectCustomized/WebPageTemplates）の土台。画面は layout(title, content) を th:replace で呼び出す。
       サイドメニューを持たない、上部ナビゲーションの管理画面（コンパクト）。
       スタイルシート：/css/BaseStylesheet.css（スタイルの theme・base）→ parts/stylesheets（BaseUtilities.css = utilities → プロジェクトの *.css = 追加・上書き）。
       lg 未満はハンバーガーでメニューを開閉する。 */-->
<html lang="ja" xmlns:th="http://www.thymeleaf.org" th:fragment="layout(title, content)">
<head th:fragment="head(title)">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title th:replace="${title}">タイトル</title>
    <link rel="icon" href="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2032%2032'%3E%3Crect%20width='32'%20height='32'%20rx='8'%20fill='%232563eb'/%3E%3C/svg%3E">
    <link rel="stylesheet" th:href="@{/css/BaseStylesheet.css}"/>
    <link th:replace="~{parts/stylesheets :: links}"/>
</head>
<body class="min-h-screen bg-slate-50 text-slate-800">
    <!-- ヘッダー（上部ナビゲーション） -->
    <header th:fragment="header" class="sticky top-0 z-50 border-b border-slate-200 bg-white/95 backdrop-blur">
        <div class="mx-auto flex h-16 max-w-[1600px] items-center gap-4 px-4 sm:gap-6 sm:px-6">
            <a th:href="@{/home}" class="flex shrink-0 items-center gap-2.5">
                <span class="grid h-8 w-8 place-items-center rounded-lg bg-blue-600 text-sm font-bold text-white">C</span>
                <span class="text-lg font-bold tracking-tight text-slate-900">CEMシステム</span>
            </a>

            <nav class="hidden min-w-0 flex-1 items-center gap-1 lg:flex" aria-label="メインメニュー">
                <a th:href="@{/home}" aria-label="トップ"
                   class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900"
                   th:attr="aria-current=${activeScreen == 'home' ? 'page' : null}"
                   th:classappend="${activeScreen == 'home'} ? 'bg-blue-50 text-blue-700' : ''">
                    <span aria-hidden="true">🏠</span>
                    <span class="ml-1">Top</span>
                </a>
                <!--/* メニュー：モジュール SideMenu（menu/SideMenu.module.json）の Sub Call で作った項目（画面・グループ）。
                       sideMenu・activeScreen（今の画面の ID）は ScriptMenuAdvice がすべての画面の model に入れる */-->
                <th:block th:replace="~{base/WebPageBaseLayoutTopNav :: desktopMenu(${sideMenu})}"></th:block>
            </nav>

            <div class="ml-auto flex items-center gap-3 sm:gap-4">
                <span class="hidden text-sm text-slate-500 sm:inline">田中 太郎</span>
                <a th:href="@{/login}" class="rounded-md border border-slate-300 bg-white px-3 py-1.5 text-sm font-medium text-slate-700 transition hover:bg-slate-50">ログアウト</a>
                <button type="button" id="topnav-toggle" aria-controls="topnav-mobile" aria-expanded="false" aria-label="メニューを開く"
                        class="grid h-9 w-9 place-items-center rounded-lg text-slate-600 transition hover:bg-slate-100 lg:hidden">
                    <svg class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true">
                        <path d="M4 6h16M4 12h16M4 18h16"/>
                    </svg>
                </button>
            </div>
        </div>

        <!-- モバイル：メニュー（lg 未満） -->
        <div id="topnav-mobile" class="hidden border-t border-slate-200 bg-white px-4 pb-4 pt-2 lg:hidden">
            <nav class="space-y-1" aria-label="モバイルメニュー">
                <a th:href="@{/home}" aria-label="トップ"
                   class="menu-link flex items-center gap-3 rounded-lg px-3 py-2 text-sm font-medium text-slate-700 transition hover:bg-slate-100"
                   th:attr="aria-current=${activeScreen == 'home' ? 'page' : null}"
                   th:classappend="${activeScreen == 'home'} ? 'bg-blue-50 text-blue-700' : ''">
                    <span class="w-5 text-center" aria-hidden="true">🏠</span>
                    <span>Top</span>
                </a>
                <th:block th:replace="~{base/WebPageBaseLayoutTopNav :: mobileMenu(${sideMenu})}"></th:block>
            </nav>
        </div>
    </header>

    <th:block th:replace="${content}"/>

    <footer class="mx-auto w-full max-w-[1600px] px-4 pb-8 pt-2 text-xs text-slate-400 sm:px-6">
        <small>&copy; Example</small>
    </footer>

    <!--/* メニューの項目（デスクトップ：グループはドロップダウン、子はリンク）。menuNodes：MenuItem の List */-->
    <th:block th:fragment="desktopMenu(menuNodes)" th:if="${menuNodes != null}">
        <th:block th:each="item : ${menuNodes}">
            <details th:if="${!item.children.isEmpty()}" class="group relative">
                <summary class="flex cursor-pointer list-none items-center gap-1 rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900 [&::-webkit-details-marker]:hidden">
                    <span th:text="${item.icon}" aria-hidden="true"></span>
                    <span th:text="${item.caption}">グループ</span>
                    <svg class="h-3.5 w-3.5 text-slate-400 transition-transform group-open:rotate-180" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <path d="m6 9 6 6 6-6"/>
                    </svg>
                </summary>
                <div class="absolute left-0 top-full z-50 mt-2 w-56 rounded-xl border border-slate-200 bg-white p-1 shadow-lg">
                    <a th:each="child : ${item.children}" th:href="@{${child.url}}"
                       class="flex items-center gap-2 rounded-lg px-3 py-2 text-sm text-slate-600 transition hover:bg-slate-100 hover:text-slate-900"
                       th:attr="aria-current=${child.key == activeScreen ? 'page' : null}"
                       th:classappend="${child.key == activeScreen} ? 'bg-blue-50 font-medium text-blue-700' : ''">
                        <span th:text="${child.icon}" aria-hidden="true"></span>
                        <span th:text="${child.caption}">画面</span>
                    </a>
                    <!--/* 2 階層目：子の子はインデントして出す（ドロップダウンの中にさらにドロップダウンは出さない） */-->
                    <th:block th:each="child : ${item.children}">
                        <a th:each="grand : ${child.children}" th:href="@{${grand.url}}"
                           class="flex items-center gap-2 rounded-lg py-2 pl-8 pr-3 text-sm text-slate-500 transition hover:bg-slate-100 hover:text-slate-900"
                           th:attr="aria-current=${grand.key == activeScreen ? 'page' : null}"
                           th:classappend="${grand.key == activeScreen} ? 'bg-blue-50 font-medium text-blue-700' : ''"
                           th:text="${grand.caption}">画面</a>
                    </th:block>
                </div>
            </details>
            <a th:if="${item.children.isEmpty()}" th:href="@{${item.url}}"
               class="rounded-lg px-3 py-2 text-sm font-medium text-slate-600 transition hover:bg-slate-100 hover:text-slate-900"
               th:attr="aria-current=${item.key == activeScreen ? 'page' : null}"
               th:classappend="${item.key == activeScreen} ? 'bg-blue-50 text-blue-700' : ''">
                <span th:text="${item.icon}" aria-hidden="true"></span>
                <span class="ml-1" th:text="${item.caption}">画面</span>
            </a>
        </th:block>
    </th:block>

    <!--/* メニューの項目（モバイル：縦に並べる） */-->
    <th:block th:fragment="mobileMenu(menuNodes)" th:if="${menuNodes != null}">
        <th:block th:each="item : ${menuNodes}">
            <details th:if="${!item.children.isEmpty()}" class="group">
                <summary class="flex cursor-pointer list-none items-center gap-3 rounded-lg px-3 py-2 text-sm font-medium text-slate-700 transition hover:bg-slate-100 [&::-webkit-details-marker]:hidden">
                    <span class="w-5 text-center" th:text="${item.icon}" aria-hidden="true"></span>
                    <span class="flex-1" th:text="${item.caption}">グループ</span>
                    <svg class="h-4 w-4 shrink-0 text-slate-400 transition-transform group-open:rotate-180" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                        <path d="m6 9 6 6 6-6"/>
                    </svg>
                </summary>
                <div class="mt-1 space-y-1 pl-6">
                    <a th:each="child : ${item.children}" th:href="@{${child.url}}"
                       class="menu-link flex items-center gap-2 rounded-lg px-3 py-2 text-sm text-slate-600 transition hover:bg-slate-100 hover:text-slate-900"
                       th:attr="aria-current=${child.key == activeScreen ? 'page' : null}"
                       th:classappend="${child.key == activeScreen} ? 'bg-blue-50 font-medium text-blue-700' : ''">
                        <span th:text="${child.icon}" aria-hidden="true"></span>
                        <span th:text="${child.caption}">画面</span>
                    </a>
                    <th:block th:each="child : ${item.children}">
                        <a th:each="grand : ${child.children}" th:href="@{${grand.url}}"
                           class="menu-link flex items-center gap-2 rounded-lg py-2 pl-6 pr-3 text-sm text-slate-500 transition hover:bg-slate-100 hover:text-slate-900"
                           th:attr="aria-current=${grand.key == activeScreen ? 'page' : null}"
                           th:classappend="${grand.key == activeScreen} ? 'bg-blue-50 font-medium text-blue-700' : ''"
                           th:text="${grand.caption}">画面</a>
                    </th:block>
                </div>
            </details>
            <a th:if="${item.children.isEmpty()}" th:href="@{${item.url}}"
               class="menu-link flex items-center gap-3 rounded-lg px-3 py-2 text-sm text-slate-700 transition hover:bg-slate-100"
               th:attr="aria-current=${item.key == activeScreen ? 'page' : null}"
               th:classappend="${item.key == activeScreen} ? 'bg-blue-50 font-medium text-blue-700' : ''">
                <span class="w-5 text-center" th:text="${item.icon}" aria-hidden="true"></span>
                <span th:text="${item.caption}">画面</span>
            </a>
        </th:block>
    </th:block>

    <script>
        // モバイルのメニュー（lg 未満）：ハンバーガーで開閉、外側クリック・Esc・メニュー選択で閉じる
        (() => {
            const toggle = document.getElementById('topnav-toggle');
            const panel = document.getElementById('topnav-mobile');
            if (!toggle || !panel) return;
            const setOpen = open => {
                panel.classList.toggle('hidden', !open);
                toggle.setAttribute('aria-expanded', String(open));
            };
            toggle.addEventListener('click', () => setOpen(panel.classList.contains('hidden')));
            document.addEventListener('keydown', event => { if (event.key === 'Escape') setOpen(false); });
            document.addEventListener('click', event => {
                if (!panel.classList.contains('hidden') && !panel.contains(event.target) && !toggle.contains(event.target)) setOpen(false);
            });
            panel.querySelectorAll('a.menu-link').forEach(link => link.addEventListener('click', () => setOpen(false)));
            window.addEventListener('resize', () => {
                if (window.matchMedia('(min-width: 1024px)').matches) setOpen(false);
            });
        })();
    </script>
</body>
</html>
