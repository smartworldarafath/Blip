.class public final synthetic Lx8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/GapComposer;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/GapComposer;)V
    .locals 0

    .line 10
    iput p1, p0, Lx8;->j:I

    iput-object p2, p0, Lx8;->k:Landroidx/compose/runtime/GapComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lx8;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lx8;->k:Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lx8;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lx8;->k:Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->m()Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->m()Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_1
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
