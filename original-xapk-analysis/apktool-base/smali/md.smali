.class public final synthetic Lmd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnet/blip/shared/SelectionListState;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lmd;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmd;->k:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lmd;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lmd;->p:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lmd;->q:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lmd;->r:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Lmd;->s:Ljava/lang/Object;

    .line 18
    .line 19
    iput-boolean p7, p0, Lmd;->l:Z

    .line 20
    .line 21
    iput-object p8, p0, Lmd;->t:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object p9, p0, Lmd;->m:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iput p10, p0, Lmd;->n:I

    .line 26
    .line 27
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerContent$Overview;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lmd;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd;->k:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lmd;->o:Ljava/lang/Object;

    iput-object p3, p0, Lmd;->m:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lmd;->r:Ljava/lang/Object;

    iput-boolean p5, p0, Lmd;->l:Z

    iput-object p6, p0, Lmd;->p:Ljava/lang/Object;

    iput-object p7, p0, Lmd;->q:Ljava/lang/Object;

    iput-object p8, p0, Lmd;->s:Ljava/lang/Object;

    iput-object p9, p0, Lmd;->t:Ljava/lang/Object;

    iput p10, p0, Lmd;->n:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lmd;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lmd;->n:I

    .line 8
    .line 9
    iget-object v4, v0, Lmd;->t:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lmd;->s:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lmd;->r:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Lmd;->q:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v8, v0, Lmd;->p:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v9, v0, Lmd;->o:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object v11, v9

    .line 25
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListState;

    .line 26
    .line 27
    move-object v12, v8

    .line 28
    check-cast v12, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 29
    .line 30
    move-object v13, v7

    .line 31
    check-cast v13, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 32
    .line 33
    move-object v14, v6

    .line 34
    check-cast v14, Landroidx/compose/ui/Alignment$Horizontal;

    .line 35
    .line 36
    move-object v15, v5

    .line 37
    check-cast v15, Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 38
    .line 39
    move-object/from16 v17, v4

    .line 40
    .line 41
    check-cast v17, Lnet/blip/shared/SelectionListState;

    .line 42
    .line 43
    move-object/from16 v19, p1

    .line 44
    .line 45
    check-cast v19, Landroidx/compose/runtime/Composer;

    .line 46
    .line 47
    move-object/from16 v1, p2

    .line 48
    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    or-int/lit8 v1, v3, 0x1

    .line 55
    .line 56
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 57
    .line 58
    .line 59
    move-result v20

    .line 60
    iget-object v10, v0, Lmd;->k:Landroidx/compose/ui/Modifier;

    .line 61
    .line 62
    iget-boolean v1, v0, Lmd;->l:Z

    .line 63
    .line 64
    iget-object v0, v0, Lmd;->m:Lkotlin/jvm/functions/Function1;

    .line 65
    .line 66
    move-object/from16 v18, v0

    .line 67
    .line 68
    move/from16 v16, v1

    .line 69
    .line 70
    invoke-static/range {v10 .. v20}, Lnet/blip/shared/SelectionListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnet/blip/shared/SelectionListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :pswitch_0
    move-object/from16 v22, v9

    .line 75
    .line 76
    check-cast v22, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 77
    .line 78
    move-object/from16 v24, v6

    .line 79
    .line 80
    check-cast v24, Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    move-object/from16 v26, v8

    .line 83
    .line 84
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 85
    .line 86
    move-object/from16 v27, v7

    .line 87
    .line 88
    check-cast v27, Lkotlin/jvm/functions/Function1;

    .line 89
    .line 90
    move-object/from16 v28, v5

    .line 91
    .line 92
    check-cast v28, Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    move-object/from16 v29, v4

    .line 95
    .line 96
    check-cast v29, Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    move-object/from16 v30, p1

    .line 99
    .line 100
    check-cast v30, Landroidx/compose/runtime/Composer;

    .line 101
    .line 102
    move-object/from16 v1, p2

    .line 103
    .line 104
    check-cast v1, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    or-int/lit8 v1, v3, 0x1

    .line 110
    .line 111
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 112
    .line 113
    .line 114
    move-result v31

    .line 115
    iget-object v1, v0, Lmd;->k:Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    iget-object v3, v0, Lmd;->m:Lkotlin/jvm/functions/Function1;

    .line 118
    .line 119
    iget-boolean v0, v0, Lmd;->l:Z

    .line 120
    .line 121
    move/from16 v25, v0

    .line 122
    .line 123
    move-object/from16 v21, v1

    .line 124
    .line 125
    move-object/from16 v23, v3

    .line 126
    .line 127
    invoke-static/range {v21 .. v31}, Lnet/blip/android/ui/home/PeerTrayKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerContent$Overview;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
