.class final Landroidx/compose/ui/viewinterop/FocusTargetPropertiesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;


# virtual methods
.method public final F(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->a(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/ui/viewinterop/FocusGroupNode_androidKt;->a(Landroidx/compose/ui/Modifier$Node;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusProperties;->c(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a(Landroid/view/View;Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusProperties;->e(Landroidx/compose/ui/geometry/Rect;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
