.class public final Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/State;

.field public final synthetic b:Landroidx/navigation/compose/ComposeNavigator;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;->a:Landroidx/compose/runtime/State;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;->b:Landroidx/navigation/compose/ComposeNavigator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;->a:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;->b:Landroidx/navigation/compose/ComposeNavigator;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Landroidx/navigation/NavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
