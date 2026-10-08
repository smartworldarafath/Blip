.class public abstract Landroidx/compose/foundation/ScrollKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    move-object v2, p0

    .line 5
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 20
    .line 21
    if-ne v3, v2, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v3, Lvc;

    .line 24
    .line 25
    const/16 v2, 0xf

    .line 26
    .line 27
    invoke-direct {v3, v2}, Lvc;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/foundation/ScrollState;->k:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 36
    .line 37
    invoke-static {v1, v2, v3, p0, v0}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    .line 42
    .line 43
    return-object p0
.end method

.method public static b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 1
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    iget-object v6, p1, Landroidx/compose/foundation/ScrollState;->e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/VerticalScrollableClipShape;->a:Landroidx/compose/foundation/VerticalScrollableClipShape;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Landroidx/compose/foundation/ScrollableAreaElement;

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    move-object v5, p1

    .line 25
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/ScrollableAreaElement;-><init>(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZZ)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance p1, Landroidx/compose/foundation/ScrollingLayoutElement;

    .line 33
    .line 34
    invoke-direct {p1, v5}, Landroidx/compose/foundation/ScrollingLayoutElement;-><init>(Landroidx/compose/foundation/ScrollState;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
