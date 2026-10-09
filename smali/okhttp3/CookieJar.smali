.class public interface abstract Lokhttp3/CookieJar;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lokhttp3/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/CookieJar$Companion$NoCookies;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/HttpUrl;)V
.end method
