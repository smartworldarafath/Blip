.class public final synthetic Lte;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lte;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lte;->k:J

    .line 8
    .line 9
    iput-object p3, p0, Lte;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lte;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput p5, p0, Lte;->l:I

    .line 14
    .line 15
    iput p6, p0, Lte;->m:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lte;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lte;->k:J

    iput-object p3, p0, Lte;->n:Ljava/lang/Object;

    iput-object p4, p0, Lte;->o:Ljava/lang/Object;

    iput p5, p0, Lte;->l:I

    iput p6, p0, Lte;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLjava/util/List;II)V
    .locals 1

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lte;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte;->n:Ljava/lang/Object;

    iput-wide p2, p0, Lte;->k:J

    iput-object p4, p0, Lte;->o:Ljava/lang/Object;

    iput p5, p0, Lte;->l:I

    iput p6, p0, Lte;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;JII)V
    .locals 1

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lte;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte;->n:Ljava/lang/Object;

    iput-object p2, p0, Lte;->o:Ljava/lang/Object;

    iput-wide p3, p0, Lte;->k:J

    iput p5, p0, Lte;->l:I

    iput p6, p0, Lte;->m:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lte;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lte;->l:I

    .line 8
    .line 9
    iget-object v4, v0, Lte;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lte;->o:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v8, v5

    .line 17
    check-cast v8, Landroidx/compose/ui/text/TextStyle;

    .line 18
    .line 19
    move-object v9, v4

    .line 20
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    move-object/from16 v10, p1

    .line 23
    .line 24
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    or-int/lit8 v1, v3, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    iget-wide v6, v0, Lte;->k:J

    .line 40
    .line 41
    iget v12, v0, Lte;->m:I

    .line 42
    .line 43
    invoke-static/range {v6 .. v12}, Landroidx/compose/material/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_0
    move-object v13, v4

    .line 48
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    move-object v14, v5

    .line 51
    check-cast v14, Ljava/lang/String;

    .line 52
    .line 53
    move-object/from16 v17, p1

    .line 54
    .line 55
    check-cast v17, Landroidx/compose/runtime/Composer;

    .line 56
    .line 57
    move-object/from16 v1, p2

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    or-int/lit8 v1, v3, 0x1

    .line 65
    .line 66
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result v18

    .line 70
    iget-wide v3, v0, Lte;->k:J

    .line 71
    .line 72
    iget v0, v0, Lte;->m:I

    .line 73
    .line 74
    move/from16 v19, v0

    .line 75
    .line 76
    move-wide v15, v3

    .line 77
    invoke-static/range {v13 .. v19}, Lnet/blip/android/ui/components/SubheadingKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 78
    .line 79
    .line 80
    return-object v2

    .line 81
    :pswitch_1
    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    move-object v8, v5

    .line 84
    check-cast v8, Ljava/util/List;

    .line 85
    .line 86
    move-object/from16 v9, p1

    .line 87
    .line 88
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 89
    .line 90
    move-object/from16 v1, p2

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    or-int/lit8 v1, v3, 0x1

    .line 98
    .line 99
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    iget-wide v6, v0, Lte;->k:J

    .line 104
    .line 105
    iget v11, v0, Lte;->m:I

    .line 106
    .line 107
    move-object v5, v4

    .line 108
    invoke-static/range {v5 .. v11}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->a(Landroidx/compose/ui/Modifier;JLjava/util/List;Landroidx/compose/runtime/Composer;II)V

    .line 109
    .line 110
    .line 111
    return-object v2

    .line 112
    :pswitch_2
    move-object v14, v4

    .line 113
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 114
    .line 115
    move-object v15, v5

    .line 116
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 117
    .line 118
    move-object/from16 v16, p1

    .line 119
    .line 120
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 121
    .line 122
    move-object/from16 v1, p2

    .line 123
    .line 124
    check-cast v1, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    or-int/lit8 v1, v3, 0x1

    .line 130
    .line 131
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 132
    .line 133
    .line 134
    move-result v17

    .line 135
    iget-wide v12, v0, Lte;->k:J

    .line 136
    .line 137
    iget v0, v0, Lte;->m:I

    .line 138
    .line 139
    move/from16 v18, v0

    .line 140
    .line 141
    invoke-static/range {v12 .. v18}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 142
    .line 143
    .line 144
    return-object v2

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
