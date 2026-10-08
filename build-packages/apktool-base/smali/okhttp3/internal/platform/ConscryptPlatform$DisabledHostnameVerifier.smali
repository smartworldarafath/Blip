.class public final Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/ConscryptPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisabledHostnameVerifier"
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;->a:Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;

    .line 7
    .line 8
    return-void
.end method
