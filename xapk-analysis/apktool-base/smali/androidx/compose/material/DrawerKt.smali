.class public abstract Landroidx/compose/material/DrawerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    const/16 v3, 0x100

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material/DrawerKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/DrawerState;
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/material/DrawerValue;->j:Landroidx/compose/material/DrawerValue;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v1, La7;

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    invoke-direct {v1, v3}, La7;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v3, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v4, Lz6;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v4, v5}, Lz6;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lc8;

    .line 36
    .line 37
    invoke-direct {v5, v1, v0}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 41
    .line 42
    invoke-direct {v6, v4, v5}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    move-object v4, p0

    .line 46
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    if-ne v5, v2, :cond_2

    .line 61
    .line 62
    :cond_1
    new-instance v5, Lb8;

    .line 63
    .line 64
    invoke-direct {v5, v1}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    invoke-static {v3, v6, v5, p0, v0}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroidx/compose/material/DrawerState;

    .line 77
    .line 78
    return-object p0
.end method
