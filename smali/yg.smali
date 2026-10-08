.class public final synthetic Lyg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    iput p4, p0, Lyg;->j:I

    .line 2
    .line 3
    iput-wide p1, p0, Lyg;->k:J

    .line 4
    .line 5
    iput-object p3, p0, Lyg;->l:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lyg;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, p2, 0x3

    .line 20
    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    move v2, v4

    .line 24
    :cond_0
    and-int/2addr p2, v4

    .line 25
    move-object v7, p1

    .line 26
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v7, p2, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x6

    .line 36
    iget-wide v3, p0, Lyg;->k:J

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    iget-object v6, p0, Lyg;->l:Lkotlin/jvm/functions/Function2;

    .line 40
    .line 41
    invoke-static/range {v3 .. v9}, Landroidx/compose/material/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object v1

    .line 49
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 50
    .line 51
    if-eq v0, v3, :cond_2

    .line 52
    .line 53
    move v2, v4

    .line 54
    :cond_2
    and-int/2addr p2, v4

    .line 55
    move-object v7, p1

    .line 56
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 57
    .line 58
    invoke-virtual {v7, p2, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x6

    .line 66
    iget-wide v3, p0, Lyg;->k:J

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    iget-object v6, p0, Lyg;->l:Lkotlin/jvm/functions/Function2;

    .line 70
    .line 71
    invoke-static/range {v3 .. v9}, Landroidx/compose/material/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object v1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
