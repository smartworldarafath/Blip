.class public final synthetic Lqd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic m:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;IZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqd;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lqd;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lqd;->l:Landroidx/compose/ui/text/TextStyle;

    .line 9
    .line 10
    iput-object p4, p0, Lqd;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 11
    .line 12
    iput p5, p0, Lqd;->n:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lqd;->o:Z

    .line 15
    .line 16
    iput p7, p0, Lqd;->p:I

    .line 17
    .line 18
    iput p8, p0, Lqd;->q:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v9

    .line 14
    iget-object v0, p0, Lqd;->j:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lqd;->k:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    iget-object v2, p0, Lqd;->l:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    iget-object v3, p0, Lqd;->m:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 21
    .line 22
    iget v4, p0, Lqd;->n:I

    .line 23
    .line 24
    iget-boolean v5, p0, Lqd;->o:Z

    .line 25
    .line 26
    iget v6, p0, Lqd;->p:I

    .line 27
    .line 28
    iget v7, p0, Lqd;->q:I

    .line 29
    .line 30
    invoke-static/range {v0 .. v9}, Lnet/blip/shared/PlatformTextKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;IZIILandroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
