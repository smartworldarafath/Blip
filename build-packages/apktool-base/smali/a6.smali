.class public final synthetic La6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, La6;->j:I

    .line 2
    .line 3
    iput-object p1, p0, La6;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, La6;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, La6;->k:Ljava/lang/String;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    .line 13
    .line 14
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p3, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    and-int/lit8 p1, p3, 0x11

    .line 26
    .line 27
    const/16 v0, 0x10

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    move p1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v3

    .line 34
    :goto_0
    and-int/2addr p3, v2

    .line 35
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {p2, p3, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-static {p0, p2, v3}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-object v1

    .line 51
    :pswitch_0
    check-cast p1, Lnet/blip/android/ui/navigation/AuthScope;

    .line 52
    .line 53
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 54
    .line 55
    check-cast p3, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    and-int/lit8 v0, p3, 0x6

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    and-int/lit8 v0, p3, 0x8

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    move-object v0, p2

    .line 73
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move-object v0, p2

    .line 81
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    :goto_2
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const/4 v0, 0x4

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/4 v0, 0x2

    .line 92
    :goto_3
    or-int/2addr p3, v0

    .line 93
    :cond_4
    and-int/lit8 v0, p3, 0x13

    .line 94
    .line 95
    const/16 v4, 0x12

    .line 96
    .line 97
    if-eq v0, v4, :cond_5

    .line 98
    .line 99
    move v3, v2

    .line 100
    :cond_5
    and-int/2addr p3, v2

    .line 101
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 102
    .line 103
    invoke-virtual {p2, p3, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_6

    .line 108
    .line 109
    new-instance p3, Lb6;

    .line 110
    .line 111
    invoke-direct {p3, p1, p0}, Lb6;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const p0, -0x61df8ff1

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const/4 p1, 0x6

    .line 122
    invoke-static {p0, p2, p1}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 127
    .line 128
    .line 129
    :goto_4
    return-object v1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
