.class public abstract Landroidx/collection/LongSetKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableLongSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableLongSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-array v0, v1, [J

    .line 8
    .line 9
    sput-object v0, Landroidx/collection/LongSetKt;->a:[J

    .line 10
    .line 11
    return-void
.end method
