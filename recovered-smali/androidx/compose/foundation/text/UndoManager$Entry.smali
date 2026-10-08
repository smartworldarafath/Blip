.class final Landroidx/compose/foundation/text/UndoManager$Entry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public a:Landroidx/compose/foundation/text/UndoManager$Entry;

.field public b:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/UndoManager$Entry;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->a:Landroidx/compose/foundation/text/UndoManager$Entry;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/UndoManager$Entry;->b:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 7
    .line 8
    return-void
.end method
