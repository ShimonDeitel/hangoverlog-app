import Foundation

struct EntryItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var drinksConsumed: String
    var symptom: String
    var severity: String
    var notes: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), drinksConsumed: String, symptom: String, severity: String, notes: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.drinksConsumed = drinksConsumed
        self.symptom = symptom
        self.severity = severity
        self.notes = notes
    }

    static func blank() -> EntryItem {
        EntryItem(drinksConsumed: "", symptom: "", severity: "", notes: "")
    }
}
