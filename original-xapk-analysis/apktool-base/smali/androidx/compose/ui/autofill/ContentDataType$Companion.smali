.class public final Landroidx/compose/ui/autofill/ContentDataType$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/autofill/ContentDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/autofill/ContentDataType;

.field public static final b:Landroidx/compose/ui/autofill/ContentDataType;

.field public static final c:Landroidx/compose/ui/autofill/ContentDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidContentDataType;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/autofill/ContentDataType$Companion;->a:Landroidx/compose/ui/autofill/ContentDataType;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidContentDataType;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/autofill/ContentDataType$Companion;->b:Landroidx/compose/ui/autofill/ContentDataType;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/AndroidContentDataType;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/compose/ui/autofill/ContentDataType$Companion;->c:Landroidx/compose/ui/autofill/ContentDataType;

    .line 24
    .line 25
    return-void
.end method
