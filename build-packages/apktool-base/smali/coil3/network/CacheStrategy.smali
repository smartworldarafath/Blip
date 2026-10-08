.class public interface abstract Lcoil3/network/CacheStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/CacheStrategy$ReadResult;,
        Lcoil3/network/CacheStrategy$WriteResult;
    }
.end annotation


# static fields
.field public static final a:Lcoil3/network/internal/DefaultCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil3/network/CacheStrategy;->a:Lcoil3/network/internal/DefaultCacheStrategy;

    .line 7
    .line 8
    return-void
.end method
