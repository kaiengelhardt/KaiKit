//
//  UICollectionView+FetchedResultsUpdater.swift
//  KEFoundation
//
//  Created by Kai Engelhardt on 13.10.17
//  Copyright © 2018 Kai Engelhardt. All rights reserved.
//
//  Distributed under the permissive MIT license
//  Get the latest version from here:
//
//  https://github.com/kaiengelhardt/KEFoundation
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

extension UICollectionView: FetchedResultsUpdaterDelegate {
	
	public func updater(_ updater: FetchedResultsUpdater, didUpdateWithSectionUpdates sectionUpdates: [FetchedResultsUpdater.SectionUpdate], rowUpdates: [FetchedResultsUpdater.RowUpdate], animated: Bool) {
		if animated {
			self.updater(updater, didUpdateWithSectionUpdates: sectionUpdates, rowUpdates: rowUpdates)
		} else {
			UIView.performWithoutAnimation {
				self.updater(updater, didUpdateWithSectionUpdates: sectionUpdates, rowUpdates: rowUpdates)
			}
		}
	}
	
	private func updater(_ updater: FetchedResultsUpdater, didUpdateWithSectionUpdates sectionUpdates: [FetchedResultsUpdater.SectionUpdate], rowUpdates: [FetchedResultsUpdater.RowUpdate]) {
		reloadData()
		collectionViewLayout.invalidateLayout()
//		performBatchUpdates({
//			for update in sectionUpdates {
//				switch update {
//				case .insert(let sectionIndex):
//					insertSections(IndexSet(integer: sectionIndex))
//				case .delete(let sectionIndex):
//					deleteSections(IndexSet(integer: sectionIndex))
//				}
//			}
//
//			for update in rowUpdates {
//				switch update {
//				case .insert(let indexPath):
//					insertItems(at: [indexPath])
//				case .delete(let indexPath):
//					deleteItems(at: [indexPath])
//				case .update(let indexPath):
//					reloadItems(at: [indexPath])
//				case .move(let (fromIndexPath, toIndexPath)):
//					reloadItems(at: [fromIndexPath, toIndexPath])
//				}
//			}
//		}, completion: nil)
//		self.collectionViewLayout.invalidateLayout()
	}
	
}
