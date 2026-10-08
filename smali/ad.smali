.class public final synthetic Lad;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:J

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lad;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lad;->k:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-wide p2, p0, Lad;->l:J

    .line 10
    .line 11
    iput-object p4, p0, Lad;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Lad;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p6, p0, Lad;->q:Ljava/lang/Object;

    .line 16
    .line 17
    iput p7, p0, Lad;->m:I

    .line 18
    .line 19
    iput p8, p0, Lad;->n:I

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JII)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lad;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad;->k:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lad;->o:Ljava/lang/Object;

    iput-object p3, p0, Lad;->p:Ljava/lang/Object;

    iput-object p4, p0, Lad;->q:Ljava/lang/Object;

    iput-wide p5, p0, Lad;->l:J

    iput p7, p0, Lad;->m:I

    iput p8, p0, Lad;->n:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lad;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lad;->m:I

    .line 8
    .line 9
    iget-object v4, v0, Lad;->q:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lad;->p:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lad;->o:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v10, v6

    .line 19
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    move-object v11, v5

    .line 22
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    move-object v12, v4

    .line 25
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    move-object/from16 v13, p1

    .line 28
    .line 29
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    or-int/lit8 v1, v3, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    iget-object v7, v0, Lad;->k:Landroidx/compose/ui/Modifier;

    .line 45
    .line 46
    iget-wide v8, v0, Lad;->l:J

    .line 47
    .line 48
    iget v15, v0, Lad;->n:I

    .line 49
    .line 50
    invoke-static/range {v7 .. v15}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :pswitch_0
    move-object/from16 v17, v6

    .line 55
    .line 56
    check-cast v17, Landroidx/compose/ui/Alignment$Horizontal;

    .line 57
    .line 58
    move-object/from16 v18, v5

    .line 59
    .line 60
    check-cast v18, Ljava/lang/String;

    .line 61
    .line 62
    move-object/from16 v19, v4

    .line 63
    .line 64
    check-cast v19, Landroidx/compose/ui/text/TextStyle;

    .line 65
    .line 66
    move-object/from16 v22, p1

    .line 67
    .line 68
    check-cast v22, Landroidx/compose/runtime/Composer;

    .line 69
    .line 70
    move-object/from16 v1, p2

    .line 71
    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    or-int/lit8 v1, v3, 0x1

    .line 78
    .line 79
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 80
    .line 81
    .line 82
    move-result v23

    .line 83
    iget-object v1, v0, Lad;->k:Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    iget-wide v3, v0, Lad;->l:J

    .line 86
    .line 87
    iget v0, v0, Lad;->n:I

    .line 88
    .line 89
    move/from16 v24, v0

    .line 90
    .line 91
    move-object/from16 v16, v1

    .line 92
    .line 93
    move-wide/from16 v20, v3

    .line 94
    .line 95
    invoke-static/range {v16 .. v24}, Lnet/blip/shared/ParagraphsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
