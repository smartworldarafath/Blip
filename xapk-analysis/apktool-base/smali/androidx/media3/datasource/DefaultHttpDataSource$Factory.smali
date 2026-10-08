.class public final Landroidx/media3/datasource/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->a:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 10
    .line 11
    const/16 v0, 0x1f40

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->b:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/datasource/DataSource;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->a:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->b:I

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource;-><init>(IILandroidx/media3/datasource/HttpDataSource$RequestProperties;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
