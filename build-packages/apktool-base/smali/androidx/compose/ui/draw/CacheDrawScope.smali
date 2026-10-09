.class public final Landroidx/compose/ui/draw/CacheDrawScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field public j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

.field public k:Landroidx/compose/ui/draw/DrawResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->j:Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/draw/DrawResult;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Landroidx/compose/ui/draw/DrawResult;->a:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->k:Landroidx/compose/ui/draw/DrawResult;

    .line 9
    .line 10
    return-object v0
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
