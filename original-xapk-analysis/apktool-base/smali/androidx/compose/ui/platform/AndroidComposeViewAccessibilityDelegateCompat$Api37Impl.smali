.class abstract Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$Api37Impl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api37Impl"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->M:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    if-nez v0, :cond_3

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->I:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, p0

    .line 29
    :goto_0
    check-cast v1, Landroidx/compose/ui/text/TextRange;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getTextChangeTypes()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    or-int/2addr p0, v0

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setTextChangeTypes(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    invoke-static {}, Lio/sentry/d;->i()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
