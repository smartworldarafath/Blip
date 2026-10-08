.class public abstract Landroidx/navigation/compose/NavGraphBuilderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 2

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 6
    .line 7
    :cond_0
    new-instance p4, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/navigation/NavGraphBuilder;->f:Landroidx/navigation/NavigatorProvider;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-class v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/navigation/NavigatorProvider$Companion;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->b(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    .line 25
    .line 26
    invoke-direct {p4, v0, p1, p3}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroidx/navigation/NamedNavArgument;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p2, p2, Landroidx/navigation/NamedNavArgument;->a:Landroidx/navigation/NavArgument;

    .line 49
    .line 50
    iget-object p3, p4, Landroidx/navigation/NavDestinationBuilder;->c:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    const-string v0, "isFromShareIntent"

    .line 53
    .line 54
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Landroidx/navigation/NavGraphBuilder;->h:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p4}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->a()Landroidx/navigation/NavDestination;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-void
.end method
