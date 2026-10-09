.class public final synthetic Landroidx/compose/foundation/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 2
    .line 3
    sget-object p0, Landroidx/compose/foundation/OverscrollKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 4
    .line 5
    sget p0, Landroidx/compose/foundation/AndroidOverscroll_androidKt;->a:I

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    move-object v1, p0

    .line 20
    check-cast v1, Landroid/content/Context;

    .line 21
    .line 22
    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 23
    .line 24
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move-object v2, p0

    .line 31
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 32
    .line 33
    sget-object p0, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 46
    .line 47
    iget-wide v3, p0, Landroidx/compose/foundation/OverscrollConfiguration;->a:J

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/compose/foundation/OverscrollConfiguration;->b:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 50
    .line 51
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method
