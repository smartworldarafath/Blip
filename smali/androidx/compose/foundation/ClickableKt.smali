.class public abstract Landroidx/compose/foundation/ClickableKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 1
    and-int/lit8 v0, p6, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    move v4, p3

    .line 7
    and-int/lit8 p3, p6, 0x10

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    :cond_1
    move-object v6, p4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    move-object v2, p2

    .line 17
    check-cast v2, Landroidx/compose/foundation/IndicationNodeFactory;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v1, p1

    .line 23
    move-object v7, p5

    .line 24
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move-object v1, p1

    .line 29
    move-object v7, p5

    .line 30
    if-nez p2, :cond_3

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-static {p1, v1, p2}, Landroidx/compose/foundation/IndicationKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    new-instance p3, Landroidx/compose/foundation/ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;

    .line 61
    .line 62
    invoke-direct {p3, p2, v4, v6, v7}, Landroidx/compose/foundation/ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;-><init>(Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p3}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static b(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    move v4, p1

    .line 7
    and-int/lit8 p1, p5, 0x2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    move-object v5, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v5, p2

    .line 15
    :goto_0
    and-int/lit8 p1, p5, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v6, p3

    .line 22
    :goto_1
    new-instance v0, Landroidx/compose/foundation/ClickableElement;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    move-object v7, p4

    .line 28
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    and-int/lit8 v0, p6, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    move v5, p3

    .line 7
    and-int/lit8 p3, p6, 0x40

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    :cond_1
    move-object v4, p4

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    move-object v1, p2

    .line 16
    check-cast v1, Landroidx/compose/foundation/IndicationNodeFactory;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/foundation/CombinedClickableElement;

    .line 19
    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p5

    .line 22
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/CombinedClickableElement;-><init>(Landroidx/compose/foundation/IndicationNodeFactory;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move-object v2, p1

    .line 27
    move-object v3, p5

    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/foundation/CombinedClickableElement;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/CombinedClickableElement;-><init>(Landroidx/compose/foundation/IndicationNodeFactory;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-static {p1, v2, p2}, Landroidx/compose/foundation/IndicationKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Landroidx/compose/foundation/CombinedClickableElement;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/CombinedClickableElement;-><init>(Landroidx/compose/foundation/IndicationNodeFactory;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    new-instance p3, Landroidx/compose/foundation/ClickableKt$combinedClickable-auXiCPI$$inlined$clickableWithIndicationIfNeeded$1;

    .line 57
    .line 58
    invoke-direct {p3, p2, v5, v3, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable-auXiCPI$$inlined$clickableWithIndicationIfNeeded$1;-><init>(Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p3}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static final d(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget p0, Landroidx/compose/ui/input/key/Key;->O:I

    .line 6
    .line 7
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->h:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->r:J

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->E:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->q:J

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0
.end method
