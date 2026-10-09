.class public final synthetic Led;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final synthetic k:J

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Z

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Led;->j:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 5
    .line 6
    iput-wide p2, p0, Led;->k:J

    .line 7
    .line 8
    iput-object p4, p0, Led;->l:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Led;->m:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p6, p0, Led;->n:Z

    .line 13
    .line 14
    iput-object p7, p0, Led;->o:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput p9, p0, Led;->p:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0xdb1

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    iget-object v0, p0, Led;->j:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 16
    .line 17
    iget-wide v1, p0, Led;->k:J

    .line 18
    .line 19
    iget-object v3, p0, Led;->l:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Led;->m:Ljava/lang/String;

    .line 22
    .line 23
    iget-boolean v5, p0, Led;->n:Z

    .line 24
    .line 25
    iget-object v6, p0, Led;->o:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    iget v9, p0, Led;->p:I

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
