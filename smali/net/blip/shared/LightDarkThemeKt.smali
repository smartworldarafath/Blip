.class public abstract Lnet/blip/shared/LightDarkThemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx9;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lnet/blip/shared/LightDarkThemeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/Composer;)Z
    .locals 4

    .line 1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    sget-object v0, Lnet/blip/shared/LightDarkThemeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/blip/shared/LightDarkTheme;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    const v0, 0x3bec6e00

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 31
    .line 32
    .line 33
    move v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const v0, 0x2b391ac5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lk8;->e()V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    const v0, 0x3bebee45    # 0.007200035f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const v0, 0x2b392260

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/content/res/Configuration;

    .line 71
    .line 72
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 73
    .line 74
    and-int/lit8 v0, v0, 0x30

    .line 75
    .line 76
    const/16 v3, 0x20

    .line 77
    .line 78
    if-ne v0, v3, :cond_3

    .line 79
    .line 80
    move v0, v1

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v0, v2

    .line 83
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 84
    .line 85
    .line 86
    move v2, v0

    .line 87
    :goto_1
    xor-int/lit8 p0, v2, 0x1

    .line 88
    .line 89
    return p0
.end method
