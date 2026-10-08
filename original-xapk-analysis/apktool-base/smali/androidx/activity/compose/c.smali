.class public final synthetic Landroidx/activity/compose/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

.field public final synthetic k:Landroidx/activity/compose/ComposeBackHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/c;->j:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/compose/c;->k:Landroidx/activity/compose/ComposeBackHandler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/activity/compose/c;->j:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->a:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/activity/compose/c;->k:Landroidx/activity/compose/ComposeBackHandler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->b:Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p1, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->b:Landroidx/activity/OnBackPressedDispatcher;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->a:Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/activity/OnBackPressedCallback;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 27
    .line 28
    invoke-direct {v0, p1, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    const-string p0, "Unreachable"

    .line 33
    .line 34
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method
