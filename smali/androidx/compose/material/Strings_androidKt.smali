.class public abstract Landroidx/compose/material/Strings_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const p0, 0x7f1100c1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    if-ne p0, v0, :cond_1

    .line 32
    .line 33
    const p0, 0x7f11002d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    const/4 v0, 0x2

    .line 42
    if-ne p0, v0, :cond_2

    .line 43
    .line 44
    const p0, 0x7f11002e

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    const/4 v0, 0x3

    .line 53
    if-ne p0, v0, :cond_3

    .line 54
    .line 55
    const p0, 0x7f110041

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_3
    const/4 v0, 0x4

    .line 64
    if-ne p0, v0, :cond_4

    .line 65
    .line 66
    const p0, 0x7f110044

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_4
    const/4 v0, 0x5

    .line 75
    if-ne p0, v0, :cond_5

    .line 76
    .line 77
    const p0, 0x7f1100d3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_5
    const/4 v0, 0x6

    .line 86
    if-ne p0, v0, :cond_6

    .line 87
    .line 88
    const p0, 0x7f1100d2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_6
    const/4 v0, 0x7

    .line 97
    if-ne p0, v0, :cond_7

    .line 98
    .line 99
    const p0, 0x7f11009d

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_7
    const-string p0, ""

    .line 108
    .line 109
    return-object p0
.end method
