.class public final Landroidx/media3/datasource/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/datasource/DefaultHttpDataSource$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->a:Landroid/content/Context;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->b:Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/datasource/DataSource;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->b:Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->a()Landroidx/media3/datasource/DataSource;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
