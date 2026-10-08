.class public final synthetic Ld2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:J

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Z


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ld2;->j:J

    .line 5
    .line 6
    iput-object p3, p0, Ld2;->k:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-boolean p4, p0, Ld2;->l:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    shr-long/2addr v0, v2

    .line 12
    long-to-int v0, v0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    invoke-static {p1, v0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->d(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-wide v0, p0, Ld2;->j:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v1, Lw1;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    iget-object v2, p0, Ld2;->k:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget-boolean v3, p0, Ld2;->l:Z

    .line 36
    .line 37
    invoke-direct/range {v1 .. v6}, Lw1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
