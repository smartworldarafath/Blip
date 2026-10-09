.class public final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->c:Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->c:Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->b:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
