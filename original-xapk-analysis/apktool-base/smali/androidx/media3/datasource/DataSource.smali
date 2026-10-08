.class public interface abstract Landroidx/media3/datasource/DataSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/DataReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract b(Landroidx/media3/datasource/TransferListener;)V
.end method

.method public abstract close()V
.end method

.method public i()Ljava/util/Map;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract l(Landroidx/media3/datasource/DataSpec;)J
.end method

.method public abstract m()Landroid/net/Uri;
.end method
